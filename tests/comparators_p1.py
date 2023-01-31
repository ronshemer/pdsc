import unittest
import time
from dynamic_sc_pdr import DynamicSelfCompositionPDR
from dynamic_sc_pdr import SolverResult

class TestComparatorsP1(unittest.TestCase):

    def setUp(self):
        self.startTime = time.time()

    def tearDown(self):
        t = time.time() - self.startTime
        print(str('%s: %.3f' % (self.id(), t))+"s")

    def create_comparator_solver(self, smt2_file):
        return DynamicSelfCompositionPDR(
            smt2_file, 
            force_predicate_abstraction=True, 
            is_comparator=True, 
            method_name="compare", 
            bmc=True, 
            explicit_conposition_function=True, 
            prop=1, 
            print_log=True,
            import_lemmas=False
        )

    def test_ArrayInt_false(self):
        filename = "./comparators_SMT2/ArrayInt-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEquals(result.status, SolverResult.SUCCESS)

if __name__ == '__main__':
    unittest.main()
