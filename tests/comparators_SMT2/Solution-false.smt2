(set-info :original "Solution-false.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool (Array Int Int) Int Int Int Int Int Int ))
(declare-rel compare_1 (Int (Array Int Int) Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%o1_solutionCost_0 Int )
(declare-var compare@%o2_solutionCost_0 Int )
(declare-var compare@%_call6_0 Int )
(declare-var compare@%nondet_0 Int )
(declare-var compare@%abscomp1.0_0 Int )
(declare-var compare@%abscomp2.0_0 Int )
(declare-var compare@%.0_7 Int )
(declare-var compare@%_call_0 (Array Int Int) )
(declare-var compare@%o1_getValue_0 Int )
(declare-var compare@%o2_getValue_0 Int )
(declare-var compare@%.0_0 Int )
(declare-var compare@_1_0 Bool )
(declare-var compare@_5_0 Bool )
(declare-var compare@_7_0 Bool )
(declare-var compare@_9_0 Bool )
(declare-var compare@_call5_0 Bool )
(declare-var compare@_26_0 Bool )
(declare-var compare@_11_0 Bool )
(declare-var compare@_14_0 Bool )
(declare-var compare@_.0_0 Bool )
(declare-var |tuple(compare@_call5_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_11_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_7_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_5_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_1_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_1 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@%.0_3 Int )
(declare-var compare@%.0_4 Int )
(declare-var compare@%.0_5 Int )
(declare-var compare@%.0_6 Int )
(declare-var compare@%.0_8 Int )
(declare-var compare@.split_0 Bool )
(declare-var main@%_call_0 (Array Int Int) )
(declare-var main@%_3_0 Int )
(declare-var main@%_4_0 Int )
(declare-var main@%_5_0 Int )
(declare-var main@%_6_0 Int )
(declare-var main@%_call1_0 Int )
(declare-var main@%_br_0 Int )
(declare-var main@_1_0 Bool )
(declare-var main@.split_0 Bool )
(rule (verifier.error false false false))
(rule (verifier.error false true true))
(rule (verifier.error true false true))
(rule (verifier.error true true true))
(rule (compare true
         true
         true
         compare@%_call_0
         compare@%o1_getValue_0
         compare@%o1_solutionCost_0
         compare@%o2_getValue_0
         compare@%o2_solutionCost_0
         compare@%nondet_0
         compare@%.0_0))
(rule (compare false
         true
         true
         compare@%_call_0
         compare@%o1_getValue_0
         compare@%o1_solutionCost_0
         compare@%o2_getValue_0
         compare@%o2_solutionCost_0
         compare@%nondet_0
         compare@%.0_0))
(rule (compare false
         false
         false
         compare@%_call_0
         compare@%o1_getValue_0
         compare@%o1_solutionCost_0
         compare@%o2_getValue_0
         compare@%o2_solutionCost_0
         compare@%nondet_0
         compare@%.0_0))
(rule (compare_1 0
           compare@%_call_0
           compare@%.0_0
           compare@%o1_solutionCost_0
           compare@%o2_solutionCost_0
           compare@%nondet_0
           compare@%o1_getValue_0
           compare@%o2_getValue_0))
(rule (let ((a!1 (=> (and compare@_5_0 compare@_1_0)
               (not (and (= compare@%o1_getValue_0 (- 1))
                         (= compare@%o2_getValue_0 (- 1))))))
      (a!2 (= compare@%abscomp1.0_0
              (ite (> (- compare@%_call6_0 compare@%o1_getValue_0) (- 1))
                   (- compare@%_call6_0 compare@%o1_getValue_0)
                   (- 0 (- compare@%_call6_0 compare@%o1_getValue_0)))))
      (a!3 (= compare@%abscomp2.0_0
              (ite (> (- compare@%_call6_0 compare@%o2_getValue_0) (- 1))
                   (- compare@%_call6_0 compare@%o2_getValue_0)
                   (- 0 (- compare@%_call6_0 compare@%o2_getValue_0)))))
      (a!4 (=> (and compare@_26_0 compare@_call5_0)
               (not (> (- compare@%abscomp1.0_0 compare@%abscomp2.0_0) 0))))
      (a!5 (=> (and compare@_14_0 compare@_11_0)
               (not (> (- compare@%o1_solutionCost_0 compare@%o2_solutionCost_0)
                       0))))
      (a!6 (= compare@%.0_1
              (ite (< (- compare@%abscomp1.0_0 compare@%abscomp2.0_0) 0)
                   (- 1)
                   0)))
      (a!7 (= compare@%.0_3
              (ite (< (- compare@%o1_solutionCost_0 compare@%o2_solutionCost_0)
                      0)
                   (- 1)
                   0))))
(let ((a!8 (and (compare_1 0
                           compare@%_call_0
                           compare@%.0_0
                           compare@%o1_solutionCost_0
                           compare@%o2_solutionCost_0
                           compare@%nondet_0
                           compare@%o1_getValue_0
                           compare@%o2_getValue_0)
                true
                (=> compare@_5_0 (and compare@_5_0 compare@_1_0))
                a!1
                (=> compare@_7_0 (and compare@_7_0 compare@_5_0))
                (=> (and compare@_7_0 compare@_5_0)
                    (not (= compare@%o1_getValue_0 (- 1))))
                (=> compare@_9_0 (and compare@_9_0 compare@_7_0))
                (=> (and compare@_9_0 compare@_7_0)
                    (not (= compare@%o2_getValue_0 (- 1))))
                (=> compare@_call5_0 (and compare@_call5_0 compare@_9_0))
                (=> (and compare@_call5_0 compare@_9_0)
                    (not (= compare@%o1_getValue_0 compare@%o2_getValue_0)))
                (=> compare@_call5_0
                    (= compare@%_call6_0
                       (select compare@%_call_0 compare@%nondet_0)))
                a!2
                a!3
                (=> compare@_26_0 (and compare@_26_0 compare@_call5_0))
                a!4
                (=> compare@_11_0 (and compare@_11_0 compare@_9_0))
                (=> (and compare@_11_0 compare@_9_0)
                    (= compare@%o1_getValue_0 compare@%o2_getValue_0))
                (=> compare@_14_0 (and compare@_14_0 compare@_11_0))
                a!5
                (=> |tuple(compare@_call5_0, compare@_.0_0)| compare@_call5_0)
                (=> |tuple(compare@_11_0, compare@_.0_0)| compare@_11_0)
                (=> |tuple(compare@_7_0, compare@_.0_0)| compare@_7_0)
                (=> |tuple(compare@_5_0, compare@_.0_0)| compare@_5_0)
                (=> |tuple(compare@_1_0, compare@_.0_0)| compare@_1_0)
                (=> compare@_.0_0
                    (or (and compare@_.0_0 compare@_26_0)
                        (and compare@_call5_0
                             |tuple(compare@_call5_0, compare@_.0_0)|)
                        (and compare@_.0_0 compare@_14_0)
                        (and compare@_11_0
                             |tuple(compare@_11_0, compare@_.0_0)|)
                        (and compare@_7_0 |tuple(compare@_7_0, compare@_.0_0)|)
                        (and compare@_5_0 |tuple(compare@_5_0, compare@_.0_0)|)
                        (and compare@_1_0 |tuple(compare@_1_0, compare@_.0_0)|)))
                a!6
                (=> (and compare@_call5_0
                         |tuple(compare@_call5_0, compare@_.0_0)|)
                    (> (- compare@%abscomp1.0_0 compare@%abscomp2.0_0) 0))
                (= compare@%.0_2 1)
                a!7
                (=> (and compare@_11_0 |tuple(compare@_11_0, compare@_.0_0)|)
                    (> (- compare@%o1_solutionCost_0 compare@%o2_solutionCost_0)
                       0))
                (= compare@%.0_4 1)
                (=> (and compare@_7_0 |tuple(compare@_7_0, compare@_.0_0)|)
                    (= compare@%o2_getValue_0 (- 1)))
                (= compare@%.0_5 (- 1))
                (=> (and compare@_5_0 |tuple(compare@_5_0, compare@_.0_0)|)
                    (= compare@%o1_getValue_0 (- 1)))
                (= compare@%.0_6 1)
                (=> (and compare@_1_0 |tuple(compare@_1_0, compare@_.0_0)|)
                    (and (= compare@%o1_getValue_0 (- 1))
                         (= compare@%o2_getValue_0 (- 1))))
                (= compare@%.0_7 0)
                (=> (and compare@_.0_0 compare@_26_0)
                    (= compare@%.0_8 compare@%.0_1))
                (=> (and compare@_call5_0
                         |tuple(compare@_call5_0, compare@_.0_0)|)
                    (= compare@%.0_8 compare@%.0_2))
                (=> (and compare@_.0_0 compare@_14_0)
                    (= compare@%.0_8 compare@%.0_3))
                (=> (and compare@_11_0 |tuple(compare@_11_0, compare@_.0_0)|)
                    (= compare@%.0_8 compare@%.0_4))
                (=> (and compare@_7_0 |tuple(compare@_7_0, compare@_.0_0)|)
                    (= compare@%.0_8 compare@%.0_5))
                (=> (and compare@_5_0 |tuple(compare@_5_0, compare@_.0_0)|)
                    (= compare@%.0_8 compare@%.0_6))
                (=> (and compare@_1_0 |tuple(compare@_1_0, compare@_.0_0)|)
                    (= compare@%.0_8 compare@%.0_7))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!8
      (compare_1 1
                 compare@%_call_0
                 compare@%.0_8
                 compare@%o1_solutionCost_0
                 compare@%o2_solutionCost_0
                 compare@%nondet_0
                 compare@%o1_getValue_0
                 compare@%o2_getValue_0)))))
(rule (=> (compare_1 1
               compare@%_call_0
               compare@%.0_0
               compare@%o1_solutionCost_0
               compare@%o2_solutionCost_0
               compare@%nondet_0
               compare@%o1_getValue_0
               compare@%o2_getValue_0)
    (compare true
             false
             false
             compare@%_call_0
             compare@%o1_getValue_0
             compare@%o1_solutionCost_0
             compare@%o2_getValue_0
             compare@%o2_solutionCost_0
             compare@%nondet_0
             compare@%.0_0)))
(rule (main_1 0))
(rule (=> (and (main_1 0)
         true
         (compare true
                  false
                  false
                  main@%_call_0
                  main@%_3_0
                  main@%_4_0
                  main@%_5_0
                  main@%_6_0
                  main@%_call1_0
                  main@%_br_0)
         (=> main@.split_0 (and main@.split_0 main@_1_0))
         main@.split_0)
    (main_1 1)))
