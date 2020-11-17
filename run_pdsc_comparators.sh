#!/bin/bash
sudo python pdsc.py -comparator -f comparators_C -p 1 > evaluation/results_p1_no_import_lemmas.txt
sudo python pdsc.py -comparator -f comparators_C -p 2 > evaluation/results_p2_no_import_lemmas.txt
sudo python pdsc.py -comparator -f comparators_C -p 3 > evaluation/results_p3_no_import_lemmas.txt

sudo python pdsc.py -comparator -import_lemmas -f comparators_C -p 1 > evaluation/results_p1_import_lemmas.txt
sudo python pdsc.py -comparator -import_lemmas -f comparators_C -p 2 > evaluation/results_p2_import_lemmas.txt
sudo python pdsc.py -comparator -import_lemmas -f comparators_C -p 3 > evaluation/results_p3_import_lemmas.txt
