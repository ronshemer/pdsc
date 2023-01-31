(set-info :original "ArrayInt-true.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool (Array Int Int) (Array Int Int) Int Int Int Int Int ))
(declare-rel compare_1 (Int (Array Int Int) (Array Int Int) Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%_call2_0 Int )
(declare-var compare@%o1_get_0 Int )
(declare-var compare@%_call4_0 Int )
(declare-var compare@%o2_get_0 Int )
(declare-var compare@%.0_4 Int )
(declare-var compare@%_2_0 (Array Int Int) )
(declare-var compare@%_call_0 (Array Int Int) )
(declare-var compare@%o1_length_0 Int )
(declare-var compare@%o2_length_0 Int )
(declare-var compare@%.0_0 Int )
(declare-var compare@%index.0_0 Int )
(declare-var compare@_1_0 Bool )
(declare-var compare@_index.0_0 Bool )
(declare-var compare@%index.0_1 Int )
(declare-var compare@%index.0_2 Int )
(declare-var compare@_7_0 Bool )
(declare-var compare@%_call3_0 Int )
(declare-var compare@%_call5_0 Int )
(declare-var compare@_13_0 Bool )
(declare-var compare@_15_0 Bool )
(declare-var compare@_index.0_1 Bool )
(declare-var compare@.critedge_0 Bool )
(declare-var compare@_18_0 Bool )
(declare-var compare@_.0_0 Bool )
(declare-var |tuple(compare@.critedge_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_13_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_7_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_1 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@%.0_3 Int )
(declare-var compare@%.0_5 Int )
(declare-var compare@.split_0 Bool )
(declare-var main@%_2_0 (Array Int Int) )
(declare-var main@%_call_0 (Array Int Int) )
(declare-var main@%_4_0 Int )
(declare-var main@%_5_0 Int )
(declare-var main@%_6_0 Int )
(declare-var main@%_call2_0 Int )
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
         compare@%_2_0
         compare@%_call_0
         compare@%o1_length_0
         compare@%o2_length_0
         compare@%o1_get_0
         compare@%o2_get_0
         compare@%.0_0))
(rule (compare false
         true
         true
         compare@%_2_0
         compare@%_call_0
         compare@%o1_length_0
         compare@%o2_length_0
         compare@%o1_get_0
         compare@%o2_get_0
         compare@%.0_0))
(rule (compare false
         false
         false
         compare@%_2_0
         compare@%_call_0
         compare@%o1_length_0
         compare@%o2_length_0
         compare@%o1_get_0
         compare@%o2_get_0
         compare@%.0_0))
(rule (compare_1 0
           compare@%_2_0
           compare@%_call_0
           compare@%.0_0
           compare@%index.0_0
           compare@%o1_get_0
           compare@%o2_get_0
           compare@%o1_length_0
           compare@%o2_length_0))
(rule (=> (and (compare_1 0
                    compare@%_2_0
                    compare@%_call_0
                    compare@%.0_0
                    compare@%index.0_0
                    compare@%o1_get_0
                    compare@%o2_get_0
                    compare@%o1_length_0
                    compare@%o2_length_0)
         true
         (=> compare@_index.0_0 (and compare@_index.0_0 compare@_1_0))
         compare@_index.0_0
         (= compare@%index.0_1 0)
         (=> (and compare@_index.0_0 compare@_1_0)
             (= compare@%index.0_2 compare@%index.0_1)))
    (compare_1 1
               compare@%_2_0
               compare@%_call_0
               compare@%.0_0
               compare@%index.0_2
               compare@%o1_get_0
               compare@%o2_get_0
               compare@%o1_length_0
               compare@%o2_length_0)))
(rule (let ((a!1 (and (compare_1 1
                           compare@%_2_0
                           compare@%_call_0
                           compare@%.0_0
                           compare@%index.0_0
                           compare@%o1_get_0
                           compare@%o2_get_0
                           compare@%o1_length_0
                           compare@%o2_length_0)
                true
                (=> compare@_7_0 (and compare@_7_0 compare@_index.0_0))
                (=> (and compare@_7_0 compare@_index.0_0)
                    (and (< compare@%index.0_0 compare@%o1_length_0)
                         (< compare@%index.0_0 compare@%o2_length_0)))
                (= compare@%_call2_0
                   (+ compare@%o1_get_0 (* compare@%index.0_0 4)))
                (=> compare@_7_0
                    (or (<= compare@%o1_get_0 0) (> compare@%_call2_0 0)))
                (=> compare@_7_0 (> compare@%o1_get_0 0))
                (=> compare@_7_0
                    (= compare@%_call3_0
                       (select compare@%_2_0 compare@%_call2_0)))
                (= compare@%_call4_0
                   (+ compare@%o2_get_0 (* compare@%index.0_0 4)))
                (=> compare@_7_0
                    (or (<= compare@%o2_get_0 0) (> compare@%_call4_0 0)))
                (=> compare@_7_0 (> compare@%o2_get_0 0))
                (=> compare@_7_0
                    (= compare@%_call5_0
                       (select compare@%_call_0 compare@%_call4_0)))
                (=> compare@_13_0 (and compare@_13_0 compare@_7_0))
                (=> (and compare@_13_0 compare@_7_0)
                    (not (< compare@%_call3_0 compare@%_call5_0)))
                (=> compare@_15_0 (and compare@_15_0 compare@_13_0))
                (=> (and compare@_15_0 compare@_13_0)
                    (not (> compare@%_call3_0 compare@%_call5_0)))
                (=> compare@_index.0_1 (and compare@_index.0_1 compare@_15_0))
                compare@_index.0_1
                (= compare@%index.0_1 (+ compare@%index.0_0 1))
                (=> (and compare@_index.0_1 compare@_15_0)
                    (= compare@%index.0_2 compare@%index.0_1)))))
  (=> a!1
      (compare_1 1
                 compare@%_2_0
                 compare@%_call_0
                 compare@%.0_0
                 compare@%index.0_2
                 compare@%o1_get_0
                 compare@%o2_get_0
                 compare@%o1_length_0
                 compare@%o2_length_0))))
(rule (let ((a!1 (=> (and compare@.critedge_0 compare@_index.0_0)
               (not (and (< compare@%index.0_0 compare@%o1_length_0)
                         (< compare@%index.0_0 compare@%o2_length_0))))))
(let ((a!2 (and (compare_1 1
                           compare@%_2_0
                           compare@%_call_0
                           compare@%.0_0
                           compare@%index.0_0
                           compare@%o1_get_0
                           compare@%o2_get_0
                           compare@%o1_length_0
                           compare@%o2_length_0)
                true
                (=> compare@.critedge_0
                    (and compare@.critedge_0 compare@_index.0_0))
                a!1
                (=> compare@_18_0 (and compare@_18_0 compare@.critedge_0))
                (=> (and compare@_18_0 compare@.critedge_0)
                    (not (< compare@%o1_length_0 compare@%o2_length_0)))
                (=> compare@_7_0 (and compare@_7_0 compare@_index.0_0))
                (=> (and compare@_7_0 compare@_index.0_0)
                    (and (< compare@%index.0_0 compare@%o1_length_0)
                         (< compare@%index.0_0 compare@%o2_length_0)))
                (= compare@%_call2_0
                   (+ compare@%o1_get_0 (* compare@%index.0_0 4)))
                (=> compare@_7_0
                    (or (<= compare@%o1_get_0 0) (> compare@%_call2_0 0)))
                (=> compare@_7_0 (> compare@%o1_get_0 0))
                (=> compare@_7_0
                    (= compare@%_call3_0
                       (select compare@%_2_0 compare@%_call2_0)))
                (= compare@%_call4_0
                   (+ compare@%o2_get_0 (* compare@%index.0_0 4)))
                (=> compare@_7_0
                    (or (<= compare@%o2_get_0 0) (> compare@%_call4_0 0)))
                (=> compare@_7_0 (> compare@%o2_get_0 0))
                (=> compare@_7_0
                    (= compare@%_call5_0
                       (select compare@%_call_0 compare@%_call4_0)))
                (=> compare@_13_0 (and compare@_13_0 compare@_7_0))
                (=> (and compare@_13_0 compare@_7_0)
                    (not (< compare@%_call3_0 compare@%_call5_0)))
                (=> |tuple(compare@.critedge_0, compare@_.0_0)|
                    compare@.critedge_0)
                (=> |tuple(compare@_13_0, compare@_.0_0)| compare@_13_0)
                (=> |tuple(compare@_7_0, compare@_.0_0)| compare@_7_0)
                (=> compare@_.0_0
                    (or (and compare@_.0_0 compare@_18_0)
                        (and compare@.critedge_0
                             |tuple(compare@.critedge_0, compare@_.0_0)|)
                        (and compare@_13_0
                             |tuple(compare@_13_0, compare@_.0_0)|)
                        (and compare@_7_0 |tuple(compare@_7_0, compare@_.0_0)|)))
                (= compare@%.0_1
                   (ite (> compare@%o1_length_0 compare@%o2_length_0) 1 0))
                (=> (and compare@.critedge_0
                         |tuple(compare@.critedge_0, compare@_.0_0)|)
                    (< compare@%o1_length_0 compare@%o2_length_0))
                (= compare@%.0_2 (- 1))
                (=> (and compare@_13_0 |tuple(compare@_13_0, compare@_.0_0)|)
                    (> compare@%_call3_0 compare@%_call5_0))
                (= compare@%.0_3 1)
                (=> (and compare@_7_0 |tuple(compare@_7_0, compare@_.0_0)|)
                    (< compare@%_call3_0 compare@%_call5_0))
                (= compare@%.0_4 (- 1))
                (=> (and compare@_.0_0 compare@_18_0)
                    (= compare@%.0_5 compare@%.0_1))
                (=> (and compare@.critedge_0
                         |tuple(compare@.critedge_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_2))
                (=> (and compare@_13_0 |tuple(compare@_13_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_3))
                (=> (and compare@_7_0 |tuple(compare@_7_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_4))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!2
      (compare_1 2
                 compare@%_2_0
                 compare@%_call_0
                 compare@%.0_5
                 compare@%index.0_0
                 compare@%o1_get_0
                 compare@%o2_get_0
                 compare@%o1_length_0
                 compare@%o2_length_0)))))
(rule (=> (compare_1 2
               compare@%_2_0
               compare@%_call_0
               compare@%.0_0
               compare@%index.0_0
               compare@%o1_get_0
               compare@%o2_get_0
               compare@%o1_length_0
               compare@%o2_length_0)
    (compare true
             false
             false
             compare@%_2_0
             compare@%_call_0
             compare@%o1_length_0
             compare@%o2_length_0
             compare@%o1_get_0
             compare@%o2_get_0
             compare@%.0_0)))
(rule (main_1 0))
(rule (=> (and (main_1 0)
         true
         (compare true
                  false
                  false
                  main@%_2_0
                  main@%_call_0
                  main@%_4_0
                  main@%_5_0
                  main@%_6_0
                  main@%_call2_0
                  main@%_br_0)
         (=> main@.split_0 (and main@.split_0 main@_1_0))
         main@.split_0)
    (main_1 1)))
