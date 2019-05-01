The following are the instructions for reproducing the experiments of the paper Property Directed Self Composition (PDSC) accepted to CAV 2019 using the provided Virtual Machine at https://drive.google.com/open?id=1cF81Joj9xtRSezOvjrvHArlrpTg2d336 (username cav19, password ae). Instructions on setting up the tool on another machine are provided at the end of this file.

The original source code and benchmarks are available on bitbucket at https://bitbucket.org/sharonsh/pdsc/src. They are also included in the folder pdsc-src on the Virtual Machine.

Reproducing experiments requires an ability to run Docker, which requires sudo access (password is ae).

SEMANTIC COMPOSITION (Table 1)
============================
COMMAND: 
     sudo python pdsc.py -semantic -f <filename.smt2> [-log]

The set of programs that require a semantic composition in order to prove the property are available in the folder semantic_SMT2, in smt2 format.
To reproduce the results reported in Table 1 run the command for every file in the folder.

HOW IT WORKS:
In each SMT2 file the k-safety problem consists of relational and non-relational (CHC) predicates and predicates for abstraction. 

The SMT2 file is structured as follows:
 
- To define the original (non-composed) program, we use the following keywords and rules:
	End     a termination predicate for the original program, with a rule that defines it.
	Inv     a predicate that stands for an invariant of the original program. 
			Inv appears in an init rule, transition rule, and termination (exit) rule. 
			We never solve for Inv. It is only used to define the original program. 
			(PDSC will find an invariant for the composed program)
 
- To define the k-safety (relational) property we use the following keywords and rules:
    rel*        used to represent a copy of a variable of the original program.
                each such copy defines a variable of the composed program.
                each type requires a new relation, 
                e.g. (rel1 x 0) denotes variable x of copy 0 with the same type as x.
    RelInit     appears in a rule that defines the relational pre condition
    RelBad      appears in a rule that defines the relational post condition
 
- The predicate language for constructing an abstracted program is specified at the end of the SMT2 file as (CHC) predicates. The definition for each predicate is given by a rule. PDSC considers all rules except for the Inv, End, RelInit and RelBad rules mentioned above as defining abstraction predicates. Relational abstraction predicates are defined using the rel* predicates (that define copies of the variables). Non-relational predicates (i.e., ones defined over the variables of the original program) are automatically duplicated for each copy of the variables. 
For example, in Power.smt2 we have the non-relational predicate y_gteq_0 that refers to variables of the original program (and will be automatically duplicated for each copy of the variables). We also have the relational predicate z0_eq_z1 defined over variables of the composed program.
 
PDSC parses the SMT2 file and verifies the property. 


COMPARATORS (Fig. 2)
===================

COMMAND: 
     (single file) sudo python pdsc.py -comparator -f <filename.c> -p <#property> [-log]
 (files in folder) sudo python pdsc.py -comparator -f <folder> -p <#property> [-log]

The comparator programs (written in C) are available in the folder ‘comparators_C’.
The possible values for the property parameter are 1, 2, and 3. Their meanings are:
1: Antisymmetry - forall x,y. sgn(compare(x,y))=-sgn(compare(y,x))
2: Transitivity - forall x,y,z. compare(x,y)>0 && compare(y,z)>0 => compare(x,z)
3: forall x,y,z. compare(x,y) => sgn(compare(x,z))=sgn(compare(y,z))

In order to reproduce the PDSC data for Fig. 2 run the command once for each property with comparators_C as input.

HOW IT WORKS:
PDSC first translates a given comparator program written in C to SMT2 format (with the structure explained above; in particular, it automatically generates predicates for the abstraction), and then runs the PDSC algorithm to verify the property.

The C comparator programs encode Java comparator programs (as used for the evaluation of Synonym), where the arguments of the compare method are objects.
As such, the parsing of the C program assumes there is a single method named “compare”.
Furthermore, the arguments of the compare method are expected to start with o1_ or o2_. 
For example, if the type of object o1 has two fields f1,f2 then the “compare” arguments are o1_f1, o1_f2, o2_f1 and o2_f2.


-------------------------------------------------------
The log flag is optional. When used, pdsc will print counterexample traces and the blocked composition assignments.

EXAMPLES:
sudo python pdsc.py  -comparator -f comparators_C/ArrayInt-false.c -p 2
sudo python pdsc.py -semantic -f semantic_SMT2/squares_sum.smt2 -log


SYNONYM
======== 
In order to evaluate PDSC it is compared to the Synonym verification tool. A docker container with Synonym is available in the VM. Synonym properties definition file (Properties.hs) was modified in order to support a new property (SquaresSum). Synonym is also available at https://github.com/lmpick/synonym.

Inside pdsc-src there is a ‘synonym’ folder containing the dockerfile, running script and examples. ‘comparator_Java’ contains the comparator examples (Fig. 2) and ‘semantic_Java’ contains the examples that require a semantic composition (Table 1). Note that Synonym works on Java programs, hence the different files. The examples and scripts are already copied to the synonym container.

Reproducing the comparator results (Fig. 2) 
----------------------------------------------------------
Run the following commands, where <#property> is a comparator property 1, 2 or 3 as mentioned above:

sudo docker attach 5b4379934a48
for filename in /synonym/benchmarks/cav-18/stackoverflow/*; do if [ "${filename##*.}" = "java" ]; then ./run_synonym.sh <#property> $filename; fi done

The results will be written to a file named ‘table’.

Reproducing semantic examples (Table 1)
--------------------------------------------------------
The semantic_Java folder is copied to the container. Use the following commands to run each example.

ArrayIntMod :
synonym -p=1 -m=synonym semantic_Java/ArrayIntMod.java

Power:
synonym -p=13 -m=synonym semantic_Java/Power_swap.java

SquaresSum:
synonym -p=10 -m=synonym semantic_Java/SquaresSum.java
[relies on modified Properties.hs]

Sum:
synonym -p=13 -m=synonym semantic_Java/Sum_swap.java

ArrayInsert:
synonym -p=13 -m=synonym semantic_Java/ArrayInsert_swap.java

OUTPUT SUCCESS INDICATION (pdsc and synonym)
==========================
PDSC may return with one of the following success or failure message:
1.Proved by invariant
2.Failed to prove (starvation detected)
3.Failed to find semantic self-composition

In the table output 1 is denoted as Y and 2,3 are denoted as N. If an unrecoverable runtime error occurs the result is denoted as F.

PLATFORM USED FOR EXPERIMENTS
Windows 10 64bit
RAM 16GB
I7-8650U @ 2.11Ghz

Setup on a new machine
==================
1.build z3:
1.1. clone z3 repository master commit 1297eeb817c7b0340f187bee35888c3f51bce569
1.2. mkdir build;cd build
1.3. cmake -DBUILD_PYTHON_BINDINGS=TRUE -DINSTALL_PYTHON_BINDINGS=TRUE ../
1.4. make -j8
1.5. sudo make install
2. run SeaHorn container:
2.1. install docker-ce
2.2. docker run -it seahorn/seahorn
3.clone pdsc repository
4. Build synonym container
4.1. cd to pdsc-src/synonym 
4.2. docker build -t synonym/synonym
4.3. docker run -it synonym/synonym /bin/bash
5. docker attach <synonym container id>

