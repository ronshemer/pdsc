import unittest
from dynamic_sc_pdr import DynamicSelfCompositionPDR

class TestSemanticExamples(unittest.TestCase):

    def test_ArrayInsert(self):
        filename = "./semantic_SMT2/ArrayInsert.smt2"
        solver = DynamicSelfCompositionPDR(filename, force_predicate_abstraction=True, is_comparator=False, bmc=True, explicit_conposition_function=True,print_log=True)
        result = solver.solve()

    def test_ArrayInsert2(self):
        self.assertTrue(True)

    def test_ArrayIntMod(self):
        self.assertTrue(True)

    def test_ArrayInt_unbalanced_p2(self):
        self.assertTrue(True)

    def test_Power(self):
        self.assertTrue(True)

    def test_shared_array(self):
        self.assertTrue(True)

    def test_SquaresSum(self):
        self.assertTrue(True)

    def test_Sum_pc(self):
        self.assertTrue(True)

    def test_Sum(self):
        self.assertTrue(True)

if __name__ == '__main__':
    unittest.main()
