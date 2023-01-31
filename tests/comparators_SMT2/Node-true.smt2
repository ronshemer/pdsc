(set-info :original "Node-true.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int Int Int Int Int ))
(declare-rel compare_1 (Int (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%_call12_0 Int )
(declare-var compare@%_23_0 Int )
(declare-var compare@%_call13_0 Int )
(declare-var compare@%_25_0 Int )
(declare-var compare@%_call7_0 Int )
(declare-var compare@%_call9_0 Int )
(declare-var compare@%.0_3 Int )
(declare-var compare@%_call5_0 Int )
(declare-var compare@%o2_containsKey_0 Int )
(declare-var compare@%_11_0 Int )
(declare-var compare@%_call4_0 Int )
(declare-var compare@%o1_containsKey_0 Int )
(declare-var compare@%_7_0 Int )
(declare-var compare@%_4_0 (Array Int Int) )
(declare-var compare@%_call_0 (Array Int Int) )
(declare-var compare@%_2_0 (Array Int Int) )
(declare-var compare@%_3_0 (Array Int Int) )
(declare-var compare@%o1_getID_0 Int )
(declare-var compare@%o2_getID_0 Int )
(declare-var compare@%o1_get_0 Int )
(declare-var compare@%o2_get_0 Int )
(declare-var compare@%.0_0 Int )
(declare-var compare@_1_0 Bool )
(declare-var compare@_9_0 Bool )
(declare-var compare@_13_0 Bool )
(declare-var compare@%_call8_0 Int )
(declare-var compare@%_call10_0 Int )
(declare-var compare@_19_0 Bool )
(declare-var compare@_21_0 Bool )
(declare-var |tuple(compare@_9_0, compare@_21_0)| Bool )
(declare-var |tuple(compare@_1_0, compare@_21_0)| Bool )
(declare-var compare@_.0_0 Bool )
(declare-var |tuple(compare@_13_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_1 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@%.0_4 Int )
(declare-var compare@.split_0 Bool )
(declare-var main@%_2_0 (Array Int Int) )
(declare-var main@%_3_0 (Array Int Int) )
(declare-var main@%_4_0 (Array Int Int) )
(declare-var main@%_call_0 (Array Int Int) )
(declare-var main@%_6_0 Int )
(declare-var main@%_7_0 Int )
(declare-var main@%_8_0 Int )
(declare-var main@%_9_0 Int )
(declare-var main@%_10_0 Int )
(declare-var main@%_call4_0 Int )
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
         compare@%_4_0
         compare@%_call_0
         compare@%_2_0
         compare@%_3_0
         compare@%o1_getID_0
         compare@%o2_getID_0
         compare@%o1_containsKey_0
         compare@%o2_containsKey_0
         compare@%o1_get_0
         compare@%o2_get_0
         compare@%.0_0))
(rule (compare false
         true
         true
         compare@%_4_0
         compare@%_call_0
         compare@%_2_0
         compare@%_3_0
         compare@%o1_getID_0
         compare@%o2_getID_0
         compare@%o1_containsKey_0
         compare@%o2_containsKey_0
         compare@%o1_get_0
         compare@%o2_get_0
         compare@%.0_0))
(rule (compare false
         false
         false
         compare@%_4_0
         compare@%_call_0
         compare@%_2_0
         compare@%_3_0
         compare@%o1_getID_0
         compare@%o2_getID_0
         compare@%o1_containsKey_0
         compare@%o2_containsKey_0
         compare@%o1_get_0
         compare@%o2_get_0
         compare@%.0_0))
(rule (compare_1 0
           compare@%_4_0
           compare@%_call_0
           compare@%_2_0
           compare@%_3_0
           compare@%.0_0
           compare@%o1_get_0
           compare@%o1_getID_0
           compare@%o2_get_0
           compare@%o2_getID_0
           compare@%o2_containsKey_0
           compare@%o1_containsKey_0))
(rule (let ((a!1 (and (compare_1 0
                           compare@%_4_0
                           compare@%_call_0
                           compare@%_2_0
                           compare@%_3_0
                           compare@%.0_0
                           compare@%o1_get_0
                           compare@%o1_getID_0
                           compare@%o2_get_0
                           compare@%o2_getID_0
                           compare@%o2_containsKey_0
                           compare@%o1_containsKey_0)
                true
                (= compare@%_call4_0
                   (+ compare@%o1_containsKey_0 (* compare@%o1_getID_0 4)))
                (or (<= compare@%o1_containsKey_0 0) (> compare@%_call4_0 0))
                (> compare@%o1_containsKey_0 0)
                (= compare@%_7_0 (select compare@%_4_0 compare@%_call4_0))
                (=> compare@_9_0 (and compare@_9_0 compare@_1_0))
                (=> (and compare@_9_0 compare@_1_0) (not (= compare@%_7_0 0)))
                (= compare@%_call5_0
                   (+ compare@%o2_containsKey_0 (* compare@%o2_getID_0 4)))
                (=> compare@_9_0
                    (or (<= compare@%o2_containsKey_0 0)
                        (> compare@%_call5_0 0)))
                (=> compare@_9_0 (> compare@%o2_containsKey_0 0))
                (=> compare@_9_0
                    (= compare@%_11_0
                       (select compare@%_call_0 compare@%_call5_0)))
                (=> compare@_13_0 (and compare@_13_0 compare@_9_0))
                (=> (and compare@_13_0 compare@_9_0) (not (= compare@%_11_0 0)))
                (= compare@%_call7_0
                   (+ compare@%o1_get_0 (* compare@%o1_getID_0 4)))
                (=> compare@_13_0
                    (or (<= compare@%o1_get_0 0) (> compare@%_call7_0 0)))
                (=> compare@_13_0 (> compare@%o1_get_0 0))
                (=> compare@_13_0
                    (= compare@%_call8_0
                       (select compare@%_2_0 compare@%_call7_0)))
                (= compare@%_call9_0
                   (+ compare@%o2_get_0 (* compare@%o2_getID_0 4)))
                (=> compare@_13_0
                    (or (<= compare@%o2_get_0 0) (> compare@%_call9_0 0)))
                (=> compare@_13_0 (> compare@%o2_get_0 0))
                (=> compare@_13_0
                    (= compare@%_call10_0
                       (select compare@%_3_0 compare@%_call9_0)))
                (=> compare@_19_0 (and compare@_19_0 compare@_13_0))
                (=> (and compare@_19_0 compare@_13_0)
                    (not (< compare@%_call8_0 compare@%_call10_0)))
                (=> |tuple(compare@_9_0, compare@_21_0)| compare@_9_0)
                (=> |tuple(compare@_1_0, compare@_21_0)| compare@_1_0)
                (=> compare@_21_0
                    (or (and compare@_9_0 |tuple(compare@_9_0, compare@_21_0)|)
                        (and compare@_1_0 |tuple(compare@_1_0, compare@_21_0)|)))
                (=> (and compare@_9_0 |tuple(compare@_9_0, compare@_21_0)|)
                    (= compare@%_11_0 0))
                (=> (and compare@_1_0 |tuple(compare@_1_0, compare@_21_0)|)
                    (= compare@%_7_0 0))
                (= compare@%_call12_0
                   (+ compare@%o1_get_0 (* compare@%o1_getID_0 4)))
                (=> compare@_21_0
                    (or (<= compare@%o1_get_0 0) (> compare@%_call12_0 0)))
                (=> compare@_21_0 (> compare@%o1_get_0 0))
                (=> compare@_21_0
                    (= compare@%_23_0 (select compare@%_2_0 compare@%_call12_0)))
                (= compare@%_call13_0
                   (+ compare@%o2_get_0 (* compare@%o2_getID_0 4)))
                (=> compare@_21_0
                    (or (<= compare@%o2_get_0 0) (> compare@%_call13_0 0)))
                (=> compare@_21_0 (> compare@%o2_get_0 0))
                (=> compare@_21_0
                    (= compare@%_25_0 (select compare@%_3_0 compare@%_call13_0)))
                (=> |tuple(compare@_13_0, compare@_.0_0)| compare@_13_0)
                (=> compare@_.0_0
                    (or (and compare@_.0_0 compare@_21_0)
                        (and compare@_.0_0 compare@_19_0)
                        (and compare@_13_0
                             |tuple(compare@_13_0, compare@_.0_0)|)))
                (= compare@%.0_1 (- compare@%_23_0 compare@%_25_0))
                (= compare@%.0_2
                   (ite (> compare@%_call8_0 compare@%_call10_0) 1 0))
                (=> (and compare@_13_0 |tuple(compare@_13_0, compare@_.0_0)|)
                    (< compare@%_call8_0 compare@%_call10_0))
                (= compare@%.0_3 (- 1))
                (=> (and compare@_.0_0 compare@_21_0)
                    (= compare@%.0_4 compare@%.0_1))
                (=> (and compare@_.0_0 compare@_19_0)
                    (= compare@%.0_4 compare@%.0_2))
                (=> (and compare@_13_0 |tuple(compare@_13_0, compare@_.0_0)|)
                    (= compare@%.0_4 compare@%.0_3))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!1
      (compare_1 1
                 compare@%_4_0
                 compare@%_call_0
                 compare@%_2_0
                 compare@%_3_0
                 compare@%.0_4
                 compare@%o1_get_0
                 compare@%o1_getID_0
                 compare@%o2_get_0
                 compare@%o2_getID_0
                 compare@%o2_containsKey_0
                 compare@%o1_containsKey_0))))
(rule (=> (compare_1 1
               compare@%_4_0
               compare@%_call_0
               compare@%_2_0
               compare@%_3_0
               compare@%.0_0
               compare@%o1_get_0
               compare@%o1_getID_0
               compare@%o2_get_0
               compare@%o2_getID_0
               compare@%o2_containsKey_0
               compare@%o1_containsKey_0)
    (compare true
             false
             false
             compare@%_4_0
             compare@%_call_0
             compare@%_2_0
             compare@%_3_0
             compare@%o1_getID_0
             compare@%o2_getID_0
             compare@%o1_containsKey_0
             compare@%o2_containsKey_0
             compare@%o1_get_0
             compare@%o2_get_0
             compare@%.0_0)))
(rule (main_1 0))
(rule (=> (and (main_1 0)
         true
         (compare true
                  false
                  false
                  main@%_4_0
                  main@%_call_0
                  main@%_2_0
                  main@%_3_0
                  main@%_6_0
                  main@%_7_0
                  main@%_8_0
                  main@%_9_0
                  main@%_10_0
                  main@%_call4_0
                  main@%_br_0)
         (=> main@.split_0 (and main@.split_0 main@_1_0))
         main@.split_0)
    (main_1 1)))
