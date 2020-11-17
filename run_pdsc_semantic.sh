#!/bin/bash
#sudo python pdsc.py -semantic -f semantic_SMT2/ArrayInsert2.smt2
#sudo python pdsc.py -semantic -f semantic_SMT2/ArrayInt_unbalanced_p2.smt2
#sudo python pdsc.py -semantic -f semantic_SMT2/shared_array-true.smt2
#sudo python pdsc.py -semantic -f semantic_SMT2/Sum_pc.smt2
sudo python pdsc.py -semantic -f semantic_SMT2/ArrayInsert.smt2 >> evaluation/results_semantic_no_import_lemmas.txt
sudo python pdsc.py -semantic -f semantic_SMT2/ArrayIntMod.smt2 >> evaluation/results_semantic_no_import_lemmas.txt
sudo python pdsc.py -semantic -f semantic_SMT2/Power.smt2 >> evaluation/results_semantic_no_import_lemmas.txt
sudo python pdsc.py -semantic -f semantic_SMT2/SquaresSum.smt2 >> evaluation/results_semantic_no_import_lemmas.txt
sudo python pdsc.py -semantic -f semantic_SMT2/Sum.smt2 >> evaluation/results_semantic_no_import_lemmas.txt

sudo python pdsc.py -semantic -import_lemmas -f semantic_SMT2/ArrayInsert.smt2 >> evaluation/results_semantic_import_lemmas.txt
sudo python pdsc.py -semantic -import_lemmas -f semantic_SMT2/ArrayIntMod.smt2 >> evaluation/results_semantic_import_lemmas.txt
sudo python pdsc.py -semantic -import_lemmas -f semantic_SMT2/Power.smt2 >> evaluation/results_semantic_import_lemmas.txt
sudo python pdsc.py -semantic -import_lemmas -f semantic_SMT2/SquaresSum.smt2 >> evaluation/results_semantic_import_lemmas.txt
sudo python pdsc.py -semantic -import_lemmas -f semantic_SMT2/Sum.smt2 >> evaluation/results_semantic_import_lemmas.txt


#Power -> DoubleSquare
#Sum -> HalfSquare
