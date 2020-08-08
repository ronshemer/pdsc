import unittest
import time
from dynamic_sc_pdr import DynamicSelfCompositionPDR 
from dynamic_sc_pdr import SolverResult 

class TestSemanticExamples(unittest.TestCase):

    def setUp(self):
        self.startTime = time.time()

    def tearDown(self):
        t = time.time() - self.startTime
        print(str('%s: %.3f' % (self.id(), t))+"s")

    def create_semantic_solver(self, filename):
        return DynamicSelfCompositionPDR(filename, force_predicate_abstraction=True, is_comparator=False, bmc=True, explicit_conposition_function=True)

    def test_Sum_pc(self):
        filename = "./semantic_SMT2/Sum_pc.smt2"
        solver = self.create_semantic_solver(filename)
        result = solver.solve()
        self.assertEquals(result.status, SolverResult.SUCCESS)

    def test_ArrayInsert(self):
        filename = "./semantic_SMT2/ArrayInsert.smt2"
        solver = self.create_semantic_solver(filename)
        result = solver.solve()
        self.assertEquals(result.status, SolverResult.SUCCESS)

    def test_ArrayInsert2(self):
        filename = "./semantic_SMT2/ArrayInsert2.smt2"
        solver = self.create_semantic_solver(filename)
        result = solver.solve()
        self.assertEquals(result.status, SolverResult.SUCCESS)


    def test_ArrayIntMod(self):
        filename = "./semantic_SMT2/ArrayIntMod.smt2"
        solver = self.create_semantic_solver(filename)
        result = solver.solve()
        self.assertEquals(result.status, SolverResult.SUCCESS)
    
    @unittest.skip("python exception in program transformation - need to check in PDSC VM")
    def test_ArrayInt_unbalanced_p2(self):
        filename = "./semantic_SMT2/ArrayInt_unbalanced_p2.smt2"
        solver = self.create_semantic_solver(filename)
        result = solver.solve()
        self.assertEquals(result.status, SolverResult.SUCCESS)

    def test_Power(self):
        filename = "./semantic_SMT2/Power.smt2"
        solver = self.create_semantic_solver(filename)
        result = solver.solve()
        self.assertEquals(result.status, SolverResult.SUCCESS)
    
    @unittest.skip("fails to prove and seg fault - need to check in PDSC VM")
    def test_shared_array(self):
        filename = "./semantic_SMT2/shared_array-true.smt2"
        solver = self.create_semantic_solver(filename)
        result = solver.solve()
        self.assertEquals(result.status, SolverResult.SUCCESS)

    def test_SquaresSum(self):
        filename = "./semantic_SMT2/SquaresSum.smt2"
        solver = self.create_semantic_solver(filename)
        result = solver.solve()
        self.assertEquals(result.status, SolverResult.SUCCESS)

    def test_Sum(self):
        filename = "./semantic_SMT2/Sum.smt2"
        solver = self.create_semantic_solver(filename)
        result = solver.solve()
        self.assertEquals(result.status, SolverResult.SUCCESS)

if __name__ == '__main__':
    unittest.main()
