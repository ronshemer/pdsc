import time
import z3

from bitstring import BitArray
from comparator_program_transformer import comparator_transform
from program_transformer import transform

class SolverResult:
    VIOLATED = "violated"
    FAIL = "fail"
    SUCCESS = "success"
    STARVE = "starvation"

    def __init__(self, filename, status, num_smt_queries, num_predicates, invariant = None):
        self.status = status
        self.num_predicates = num_predicates
        self.num_smt_queries = num_smt_queries
        self.invariant = invariant
        self.filename = filename
    
    def smt_count(self):
        return self.num_smt_queries

    def predicate_count(self):
        return self.num_predicates

    def to_table_format(self, pp_delta, delta):
        if self.status == "violated" or self.status == "starvation":
            result_sign = "N"
        else:
            result_sign = "Y"
        return self.filename + ";\t" + str(delta.total_seconds()) + ";\t" + str(pp_delta.total_seconds() +delta.total_seconds()) + ";\t" + result_sign + ";" + str(self.smt_count()) + ";" + str(self.predicate_count()) + "\n"

    def get_status_msg(self):
        if self.status == SolverResult.VIOLATED:
            return "Counter-example found. Property is violated."
        if self.status == SolverResult.FAIL:
            return "Failed to find semantic self-composition. Either the property is violated or not enough predicates were supplied."
        if self.status == SolverResult.SUCCESS:
            success_msg = "Proved by invariant:\n"
            success_msg += self.invariant
            return success_msg
        if self.status == SolverResult.STARVE:
            return "Failed to prove (starvation detected)"

class DynamicSelfCompositionPDR:
    def __init__(self, filename, force_predicate_abstraction, is_comparator, explicit_conposition_function, method_name=None,concrete_array_vars=False,bmc=False,print_log=False,prop=None, import_lemmas=False):
        if prop is not None and prop == 1:
            prop=0
        self.force_predicate_abstraction = force_predicate_abstraction
        self.bmc = bmc
        self.concrete_dp = None
        self.dynamic_program = self.sc_program_from_file(filename, is_comparator, method_name,concrete_array_vars,prop)
        self.dynamic_program.use_explicit_conposition_function = explicit_conposition_function
        self.ctx = self.dynamic_program.ctx
        self.smt_queries_count = 0
        self.lemmas = {}
        self.fp = None
        self.blocked_compositions = {}
        self.longest_abstract_trace = 0
        self.print_log=print_log
        self.filename = filename
        self.is_import_lemmas = import_lemmas

    def solve(self):
        num_preds = len(self.dynamic_program.abstract_var_names) if self.dynamic_program.is_predicate_abstraction else 0
        timeout = time.time() + 15
        trace = self.find_cex()
        while trace is not None:
            # if time.time() > timeout:
            #     return "Timeout reached",self.smt_queries_count
            if self.print_log:
                print("Counter-example trace:\n" + self.print_trace(trace))

            if self.bmc and self.longest_abstract_trace == 0 and len(trace)<4 and self.dynamic_program.k == 3:
                self.longest_abstract_trace = len(trace)
                if self.print_log:
                    print("running bmc of depth "+str(self.longest_abstract_trace))
                if self.run_bmc():
                    return SolverResult(self.filename, "violated", self.smt_queries_count,num_preds)

            if not self.dynamic_program.is_predicate_abstraction:
                return SolverResult(self.filename, "violated", self.smt_queries_count,num_preds)

            if self.dynamic_program.default_composition:
                self.dynamic_program.default_composition = False
                self.dynamic_program.sc_tr = None

            fixed = self.block_or_extend_bad(trace)
            if not fixed:
                self.print_statistics()
                return SolverResult(self.filename, "fail", self.smt_queries_count,num_preds)
            trace = self.find_cex()

        inv = self.get_invariant()
        if self.dynamic_program.is_predicate_abstraction:
            if not self.check_starvation(inv):
                # invariant starves at least one copy
                self.print_statistics()
                return SolverResult(self.filename, "starvation", self.smt_queries_count,num_preds)
        self.print_statistics()
        return SolverResult(self.filename, "success", self.smt_queries_count,num_preds,str(inv))

    def block_or_extend_bad(self, trace):
        if len(trace) <= 1:
            # Bad extended enough to intersect Init
            return False
        while True:
            bad_predecessor = trace[-2][0]
            bad_predecessor_assignment = trace[-2][1]
            if bad_predecessor not in self.blocked_compositions:
                self.blocked_compositions[bad_predecessor] = []

            if len(self.blocked_compositions[bad_predecessor]) == (
                    self.dynamic_program.possible_assignments - 1) or self.check_possible_cutoff(bad_predecessor,
                                                                                                 bad_predecessor_assignment):
                if self.print_log:
                    print("Extending bad with state " + bad_predecessor.pretty_print(self.dynamic_program) + "\n")
                self.dynamic_program.extend_bad(bad_predecessor)
                self.blocked_compositions.pop(bad_predecessor)
                trace = trace[:-1]
                if len(trace) <= 1:
                    return False
            else:
                if self.print_log:
                    print("Blocking composition assignment " + str(bad_predecessor_assignment) + " for state\n " + bad_predecessor.pretty_print(self.dynamic_program) + "\n")
                self.blocked_compositions[bad_predecessor].append(bad_predecessor_assignment)
                self.dynamic_program.change_assignment(bad_predecessor, self.get_next_assignment(bad_predecessor))
                self.dynamic_program.sc_tr = None
                break
        self.dynamic_program.mk_dynamic_rules()
        return True

    def run_bmc(self):
        self.smt_queries_count += 1
        self.concrete_dp.mk_init_rule()
        self.init_bounded_fp(self.longest_abstract_trace+3,self.concrete_dp.ctx)
        self.load_dynamic_program_for_bmc()

        res = self.fp.query(self.concrete_dp.get_bad())
        if res == z3.sat:
            return True
        return False

    def find_cex(self):
        self.smt_queries_count += 1
        self.init_fp()
        if self.is_import_lemmas:
            self.import_lemmas()
        self.load_dynamic_program()

        res = self.fp.query(self.dynamic_program.get_bad())
        if not self.dynamic_program.default_composition and self.is_import_lemmas:
            self.export_inv_lemmas()
        if res == z3.unsat:
            return None
        else:
            answer = self.fp.get_ground_sat_answer()
            return self.get_state_move_trace(answer)

    def print_statistics(self):
        print(str(self.smt_queries_count) + " SMT queries performed.")

    def export_inv_lemmas(self):
        level = 0
        while True:
            cover_delta = self.fp.get_cover_delta(level, self.dynamic_program.get_inv_declaration())
            if z3.is_true(cover_delta):
                break
            self.lemmas[level] = cover_delta
            level += 1

    def import_lemmas(self):
        inv_decl = self.dynamic_program.get_inv_declaration()
        for level, prop in self.lemmas.items():
            self.fp.add_cover(level, inv_decl, prop)

    def init_fp(self):
        # z3.enable_trace('spacer')
        fp = z3.Fixedpoint(ctx=self.ctx)  # fixpoint solver
        fp.set(engine='spacer')
        fp.set('spacer.eq_prop', False)
        fp.set('xform.slice', False)
        fp.set('xform.inline_linear', False)  # performance once there is no need for debuging
        fp.set('xform.inline_eager', False)
        fp.set('xform.tail_simplifier_pve', False)
        #fp.set('spacer.print_json','/home/ron/pdsc/pobvis_input/lemmas.json')
        self.fp = fp

    def init_bounded_fp(self,bound,ctx):
        # z3.enable_trace('spacer')
        fp = z3.Fixedpoint(ctx=ctx)  # fixpoint solver
        fp.set(engine='spacer')
        fp.set('spacer.max_level',bound)
        fp.set('spacer.eq_prop', False)
        fp.set('xform.slice', False)
        fp.set('xform.inline_linear', False)  # performance once there is no need for debuging
        fp.set('xform.inline_eager', False)
        fp.set('xform.tail_simplifier_pve', False)
        self.fp = fp

    def get_state_move_trace(self, answer):
        z3_states = self.get_z3_states(answer)
        state_move_trace = []
        for z3_state in z3_states:
            state = self.dynamic_program.abstract_state_from_z3_state(z3_state)
            state_move_trace.append(
                (state, (7 if self.dynamic_program.k == 3 else 2) if self.dynamic_program.default_composition else z3_state.arg(0).as_long()))
        state_move_trace.reverse()
        return state_move_trace

    @staticmethod
    def get_z3_states(answer):
        i = 1
        states = []
        while i < len(answer.children()):
            states.append(answer.arg(i))
            i += 1
        return states

    def print_trace(self, trace):
        ret = ""
        for state, move in trace:
            ret += state.pretty_print(self.dynamic_program) + "--->"
            ret += "[" + (str(move) if not self.dynamic_program.default_composition else (str(7) if self.dynamic_program.k == 3 else str(
                2))) + "]\n\n"
        return ret

    def get_invariant(self):
        inv_decl = self.dynamic_program.get_inv_declaration()
        inv_rel = self.dynamic_program.get_inv_relation()
        val = self.fp.get_cover_delta(-1, inv_decl)
        val = z3.substitute_vars(val, *inv_rel.children())
        return val

    def load_dynamic_program(self):
        self.dynamic_program.mk_tr_rule()
        self.dynamic_program.mk_bad_rule()
        self.fp.declare_var(self.dynamic_program.get_vars_to_declare())
        self.fp.register_relation(self.dynamic_program.get_bad_declaration())
        self.fp.register_relation(self.dynamic_program.get_inv_declaration())
        for rule in self.dynamic_program.get_rules():
            if z3.is_app_of(rule, z3.Z3_OP_IMPLIES):
                self.fp.add_rule(rule.arg(1), rule.arg(0))
            else:
                self.fp.add_rule(rule)

    def load_dynamic_program_for_bmc(self):
        self.concrete_dp.mk_tr_rule()
        self.concrete_dp.mk_bad_rule()
        self.fp.declare_var(self.concrete_dp.get_vars_to_declare())
        self.fp.register_relation(self.concrete_dp.get_bad_declaration())
        self.fp.register_relation(self.concrete_dp.get_inv_declaration())
        for rule in self.concrete_dp.get_rules():
            if z3.is_app_of(rule, z3.Z3_OP_IMPLIES):
                self.fp.add_rule(rule.arg(1), rule.arg(0))
            else:
                self.fp.add_rule(rule)

    def check_starvation(self, inv):
        solver = z3.Solver(ctx=self.ctx)
        # print composition function for invariant
        # self.dynamic_program.composition_func.print()
        solver.add(self.dynamic_program.subst_predicates(inv))
        solver.add(self.dynamic_program.subst_predicates(self.dynamic_program.get_all_end()))
        if z3.unsat == solver.check():
            return False
        return True

    def sc_program_from_file(self, program_path, is_comparator, method_name,concrete_array_vars,prop):
        if is_comparator:
            dp, entry_to_memory_map = comparator_transform(program_path, self.force_predicate_abstraction, method_name,prop)
            if self.bmc and self.force_predicate_abstraction:
                self.concrete_dp = comparator_transform(program_path, False, method_name,prop,entry_to_memory_map)[0]
        else: 
            dp = transform(program_path, self.force_predicate_abstraction,concrete_array_vars)
        dp.mk_init_rule()
        return dp

    def check_possible_cutoff(self, state, assignment_to_disable):
        #return False-> no cutoff, return True -> extend bad
        if self.dynamic_program.k == 2:
            if assignment_to_disable == 2:
                if state in self.blocked_compositions and len(self.blocked_compositions[state]) > 0:
                    copy_to_check = 1 - self.blocked_compositions[state][0]
                else:
                    return False
            elif 2 in self.blocked_compositions[state]:
                copy_to_check = 1 - assignment_to_disable
            else:
                return False
            return not self.check_not_ended(state, copy_to_check)
        if self.dynamic_program.k == 3:
            assignments_left = range(1, 8)
            assignments_left.remove(assignment_to_disable)
            if state in self.blocked_compositions:
                for assignment in self.blocked_compositions[state]:
                    assignments_left.remove(assignment)
            for assignment in assignments_left:
                b = BitArray(uint=assignment, length=3)
                copy_2_run = (assignment in [4,5,6])#b[0]
                copy_1_run = (assignment in [2,3,6])#b[1]
                copy_0_run = (assignment in [1,3,5])#b[2]
                if copy_0_run:
                    if not self.check_not_ended(state,0):
                        continue
                if copy_1_run:
                    if self.check_not_ended(state,1):
                        continue
                if copy_2_run:
                    if self.check_not_ended(state,2):
                        continue
                return False
            return True

    def check_not_ended(self, state, copy_to_check):
        # return True-> copy did not exit yet in the state-> OK assignment
        solver = z3.Solver(ctx=self.ctx)
        solver.add(self.dynamic_program.exits[copy_to_check])
        solver.add(self.dynamic_program.subst_predicates(self.dynamic_program.abstract_state_to_cond(state)))
        return z3.unsat == solver.check()

    def get_next_assignment(self, state):
        # todo: improve performance- do not allow copies that ended to run, this will result in less compositions
        if self.dynamic_program.k == 2:
        # at this point we know there is some possible composition for state that is not starving
            for next in range(self.dynamic_program.possible_assignments):
                if next not in self.blocked_compositions[state]:
                    if next == 2:
                        return 2
                    if self.check_not_ended(state, next):
                        return next
        if self.dynamic_program.k == 3:
            for next in range(self.dynamic_program.possible_assignments):
                if next not in self.blocked_compositions[state]:
                    if next == 7:
                        return 7
                    b = BitArray(uint=next, length=3)
                    copy_2_run = (next in [4, 5, 6])  # b[0]
                    copy_1_run = (next in [2, 3, 6])  # b[1]
                    copy_0_run = (next in [1, 3, 5])  # b[2]
                    if copy_0_run:
                        if not self.check_not_ended(state, 0):
                            self.blocked_compositions[state].append(next)
                            continue
                    if copy_1_run:
                        if self.check_not_ended(state, 1):
                            self.blocked_compositions[state].append(next)
                            continue
                    if copy_2_run:
                        if self.check_not_ended(state, 2):
                            self.blocked_compositions[state].append(next)
                            continue
                    return next
