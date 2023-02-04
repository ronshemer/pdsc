import unittest
import time
from dynamic_sc_pdr import DynamicSelfCompositionPDR
from dynamic_sc_pdr import SolverResult

class TestComparatorsP2(unittest.TestCase):

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
            prop=2, 
            print_log=False,
            import_lemmas=False
        )

    def test_ArrayInt_false(self):
        filename = "tests/comparators_SMT2/ArrayInt-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_ArrayInt_true(self):
        filename = "tests/comparators_SMT2/ArrayInt-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_CatBPos_false(self):
        filename = "tests/comparators_SMT2/CatBPos-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.FAIL)

    def test_Chromosome_false(self):
        filename = "tests/comparators_SMT2/Chromosome-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.FAIL)

    def test_Chromosome_true(self):
        filename = "tests/comparators_SMT2/Chromosome-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_ColItem_true(self):
        filename = "tests/comparators_SMT2/ColItem-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_ColItem_false(self):
        filename = "tests/comparators_SMT2/ColItem-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.FAIL)

    def test_Contact_false(self):
        filename = "tests/comparators_SMT2/Contact-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.FAIL)

    def test_Container_false_v1(self):
        filename = "tests/comparators_SMT2/Container-false-v1.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.FAIL)

    def test_Container_false_v2(self):
        filename = "tests/comparators_SMT2/Container-false-v2.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.FAIL)

    def test_Container_true(self):
        filename = "tests/comparators_SMT2/Container-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_DataPoint_false(self):
        filename = "tests/comparators_SMT2/DataPoint-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.FAIL)

    def test_FileItem_false(self):
        filename = "tests/comparators_SMT2/FileItem-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_FileItem_true(self):
        filename = "tests/comparators_SMT2/FileItem-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_IsoSprite_false_v1(self):
        filename = "tests/comparators_SMT2/IsoSprite-false-v1.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.FAIL)

    def test_IsoSprite_false_v2(self):
        filename = "tests/comparators_SMT2/IsoSprite-false-v2.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.FAIL)

    def test_Match_false(self):
        filename = "tests/comparators_SMT2/Match-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_Match_true(self):
        filename = "tests/comparators_SMT2/Match-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_NameComparator_false(self):
        filename = "tests/comparators_SMT2/NameComparator-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_NameComparator_true(self):
        filename = "tests/comparators_SMT2/NameComparator-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)
        
    def test_Node_false(self):
        filename = "tests/comparators_SMT2/Node-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_Node_true(self):
        filename = "tests/comparators_SMT2/Node-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_NzbFile_false(self):
        filename = "tests/comparators_SMT2/NzbFile-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_NzbFile_true(self):
        filename = "tests/comparators_SMT2/NzbFile-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_PokerHand_false(self):
        filename = "tests/comparators_SMT2/PokerHand-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.FAIL)

    def test_PokerHand_true(self):
        filename = "tests/comparators_SMT2/PokerHand-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.FAIL)

    def test_Solution_false(self):
        filename = "tests/comparators_SMT2/Solution-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_TextPosition_false(self):
        filename = "tests/comparators_SMT2/TextPosition-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_TextPosition_true(self):
        filename = "tests/comparators_SMT2/TextPosition-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_Time_false(self):
        filename = "tests/comparators_SMT2/Time-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_Time_true(self):
        filename = "tests/comparators_SMT2/Time-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

    def test_Word_false(self):
        filename = "tests/comparators_SMT2/Word-false.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.FAIL)

    def test_Word_true(self):
        filename = "tests/comparators_SMT2/Word-true.smt2"
        solver = self.create_comparator_solver(filename)
        result = solver.solve()
        self.assertEqual(result.status, SolverResult.SUCCESS)

if __name__ == '__main__':
    unittest.main()
