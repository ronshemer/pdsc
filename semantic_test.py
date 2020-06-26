import unittest
from dynamic_sc_pdr import DynamicSelfCompositionPDR

class TestSemanticExamples(unittest.TestCase):

    def test_ArrayInsert(self):
        filename = "./semantic_SMT2/ArrayInsert.smt2"
        solver = DynamicSelfCompositionPDR(filename, force_predicate_abstraction=True, is_comparator=False, bmc=True, explicit_conposition_function=True,print_log=True)
        result = solver.solve()
        print("result: "+str(result))

    def test_ArrayInsert2(self):
        filename = "./semantic_SMT2/ArrayInsert2.smt2"
        solver = DynamicSelfCompositionPDR(filename, force_predicate_abstraction=True, is_comparator=False, bmc=True, explicit_conposition_function=True,print_log=True)
        result = solver.solve()
        print("result: "+str(result))


    def test_ArrayIntMod(self):
        filename = "./semantic_SMT2/ArrayIntMod2.smt2"
        solver = DynamicSelfCompositionPDR(filename, force_predicate_abstraction=True, is_comparator=False, bmc=True, explicit_conposition_function=True,print_log=True)
        result = solver.solve()
        print("result: "+str(result))

    def test_ArrayInt_unbalanced_p2(self):
        filename = "./semantic_SMT2/ArrayInt_unbalanced_p2.smt2"
        solver = DynamicSelfCompositionPDR(filename, force_predicate_abstraction=True, is_comparator=False, bmc=True, explicit_conposition_function=True,print_log=True)
        result = solver.solve()
        print("result: "+str(result))

    def test_Power(self):
        filename = "./semantic_SMT2/Power.smt2"
        solver = DynamicSelfCompositionPDR(filename, force_predicate_abstraction=True, is_comparator=False, bmc=True, explicit_conposition_function=True,print_log=True)
        result = solver.solve()
        print("result: "+str(result))

    def test_shared_array(self):
        filename = "./semantic_SMT2/shared_array-true.smt2"
        solver = DynamicSelfCompositionPDR(filename, force_predicate_abstraction=True, is_comparator=False, bmc=True, explicit_conposition_function=True,print_log=True)
        result = solver.solve()
        print("result: "+str(result))

    def test_SquaresSum(self):
        filename = "./semantic_SMT2/SquaresSum.smt2"
        solver = DynamicSelfCompositionPDR(filename, force_predicate_abstraction=True, is_comparator=False, bmc=True, explicit_conposition_function=True,print_log=True)
        result = solver.solve()
        print("result: "+str(result))

    def test_Sum_pc(self):
        filename = "./semantic_SMT2/Sum_pc.smt2"
        solver = DynamicSelfCompositionPDR(filename, force_predicate_abstraction=True, is_comparator=False, bmc=True, explicit_conposition_function=True,print_log=True)
        result = solver.solve()
        print("result: "+str(result))

    def test_Sum(self):
        filename = "./semantic_SMT2/Sum.smt2"
        solver = DynamicSelfCompositionPDR(filename, force_predicate_abstraction=True, is_comparator=False, bmc=True, explicit_conposition_function=True,print_log=True)
        result = solver.solve()
        print("result: "+str(result))

if __name__ == '__main__':
    unittest.main()
