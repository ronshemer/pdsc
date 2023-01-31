(set-info :original "Word-false.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool (Array Int Int) (Array Int Int) Int Int Int Int Int Int Int ))
(declare-rel compare_1 (Int (Array Int Int) (Array Int Int) Int Int Int Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%_call4_0 Int )
(declare-var compare@%_11_0 Int )
(declare-var compare@%_call5_0 Int )
(declare-var compare@%_13_0 Int )
(declare-var compare@%_call9_0 Int )
(declare-var compare@%_21_0 Int )
(declare-var compare@%_call10_0 Int )
(declare-var compare@%_23_0 Int )
(declare-var compare@%_call_0 (Array Int Int) )
(declare-var compare@%_2_0 (Array Int Int) )
(declare-var compare@%o1_count_0 Int )
(declare-var compare@%o2_count_0 Int )
(declare-var compare@%o1_length_0 Int )
(declare-var compare@%o2_length_0 Int )
(declare-var compare@%o1_0 Int )
(declare-var compare@%o2_0 Int )
(declare-var compare@%.0_0 Int )
(declare-var compare@%i1.0_0 Int )
(declare-var compare@%i2.0_0 Int )
(declare-var compare@_1_0 Bool )
(declare-var compare@_5_0 Bool )
(declare-var compare@_i2.0_0 Bool )
(declare-var compare@%i2.0_1 Int )
(declare-var compare@%i2.0_2 Int )
(declare-var compare@_i1.0_0 Bool )
(declare-var compare@%i1.0_1 Int )
(declare-var compare@%i1.0_2 Int )
(declare-var compare@_27_0 Bool )
(declare-var compare@%_br13_0 Int )
(declare-var compare@_.0_0 Bool )
(declare-var compare@%.0_1 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@.split_0 Bool )
(declare-var compare@_19_0 Bool )
(declare-var compare@_25_0 Bool )
(declare-var compare@_i2.0_1 Bool )
(declare-var |tuple(compare@_19_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_i2.0_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_3 Int )
(declare-var compare@_9_0 Bool )
(declare-var compare@_15_0 Bool )
(declare-var compare@_i1.0_1 Bool )
(declare-var |tuple(compare@_9_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_i1.0_0, compare@_.0_0)| Bool )
(declare-var main@%_2_0 (Array Int Int) )
(declare-var main@%_call_0 (Array Int Int) )
(declare-var main@%_4_0 Int )
(declare-var main@%_5_0 Int )
(declare-var main@%_6_0 Int )
(declare-var main@%_7_0 Int )
(declare-var main@%_8_0 Int )
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
         compare@%_call_0
         compare@%_2_0
         compare@%o1_count_0
         compare@%o2_count_0
         compare@%o1_length_0
         compare@%o2_length_0
         compare@%o1_0
         compare@%o2_0
         compare@%.0_0))
(rule (compare false
         true
         true
         compare@%_call_0
         compare@%_2_0
         compare@%o1_count_0
         compare@%o2_count_0
         compare@%o1_length_0
         compare@%o2_length_0
         compare@%o1_0
         compare@%o2_0
         compare@%.0_0))
(rule (compare false
         false
         false
         compare@%_call_0
         compare@%_2_0
         compare@%o1_count_0
         compare@%o2_count_0
         compare@%o1_length_0
         compare@%o2_length_0
         compare@%o1_0
         compare@%o2_0
         compare@%.0_0))
(rule (compare_1 0
           compare@%_call_0
           compare@%_2_0
           compare@%.0_0
           compare@%i1.0_0
           compare@%o1_0
           compare@%o2_0
           compare@%o1_length_0
           compare@%i2.0_0
           compare@%o2_length_0
           compare@%o1_count_0
           compare@%o2_count_0))
(rule (let ((a!1 (and (compare_1 0
                           compare@%_call_0
                           compare@%_2_0
                           compare@%.0_0
                           compare@%i1.0_0
                           compare@%o1_0
                           compare@%o2_0
                           compare@%o1_length_0
                           compare@%i2.0_0
                           compare@%o2_length_0
                           compare@%o1_count_0
                           compare@%o2_count_0)
                true
                (=> compare@_5_0 (and compare@_5_0 compare@_1_0))
                (=> (and compare@_5_0 compare@_1_0)
                    (= compare@%o1_count_0 compare@%o2_count_0))
                (=> compare@_i2.0_0 (and compare@_i2.0_0 compare@_5_0))
                compare@_i2.0_0
                (=> (and compare@_i2.0_0 compare@_5_0)
                    (not (> compare@%o1_length_0 compare@%o2_length_0)))
                (= compare@%i2.0_1 0)
                (=> (and compare@_i2.0_0 compare@_5_0)
                    (= compare@%i2.0_2 compare@%i2.0_1)))))
  (=> a!1
      (compare_1 1
                 compare@%_call_0
                 compare@%_2_0
                 compare@%.0_0
                 compare@%i1.0_0
                 compare@%o1_0
                 compare@%o2_0
                 compare@%o1_length_0
                 compare@%i2.0_2
                 compare@%o2_length_0
                 compare@%o1_count_0
                 compare@%o2_count_0))))
(rule (=> (and (compare_1 0
                    compare@%_call_0
                    compare@%_2_0
                    compare@%.0_0
                    compare@%i1.0_0
                    compare@%o1_0
                    compare@%o2_0
                    compare@%o1_length_0
                    compare@%i2.0_0
                    compare@%o2_length_0
                    compare@%o1_count_0
                    compare@%o2_count_0)
         true
         (=> compare@_5_0 (and compare@_5_0 compare@_1_0))
         (=> (and compare@_5_0 compare@_1_0)
             (= compare@%o1_count_0 compare@%o2_count_0))
         (=> compare@_i1.0_0 (and compare@_i1.0_0 compare@_5_0))
         compare@_i1.0_0
         (=> (and compare@_i1.0_0 compare@_5_0)
             (> compare@%o1_length_0 compare@%o2_length_0))
         (= compare@%i1.0_1 0)
         (=> (and compare@_i1.0_0 compare@_5_0)
             (= compare@%i1.0_2 compare@%i1.0_1)))
    (compare_1 2
               compare@%_call_0
               compare@%_2_0
               compare@%.0_0
               compare@%i1.0_2
               compare@%o1_0
               compare@%o2_0
               compare@%o1_length_0
               compare@%i2.0_0
               compare@%o2_length_0
               compare@%o1_count_0
               compare@%o2_count_0)))
(rule (let ((a!1 (and (compare_1 0
                           compare@%_call_0
                           compare@%_2_0
                           compare@%.0_0
                           compare@%i1.0_0
                           compare@%o1_0
                           compare@%o2_0
                           compare@%o1_length_0
                           compare@%i2.0_0
                           compare@%o2_length_0
                           compare@%o1_count_0
                           compare@%o2_count_0)
                true
                (=> compare@_27_0 (and compare@_27_0 compare@_1_0))
                (=> (and compare@_27_0 compare@_1_0)
                    (not (= compare@%o1_count_0 compare@%o2_count_0)))
                (= compare@%_br13_0
                   (ite (> compare@%o1_count_0 compare@%o2_count_0) 1 (- 1)))
                (=> compare@_.0_0 (and compare@_.0_0 compare@_27_0))
                (= compare@%.0_1 compare@%_br13_0)
                (=> (and compare@_.0_0 compare@_27_0)
                    (= compare@%.0_2 compare@%.0_1))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!1
      (compare_1 3
                 compare@%_call_0
                 compare@%_2_0
                 compare@%.0_2
                 compare@%i1.0_0
                 compare@%o1_0
                 compare@%o2_0
                 compare@%o1_length_0
                 compare@%i2.0_0
                 compare@%o2_length_0
                 compare@%o1_count_0
                 compare@%o2_count_0))))
(rule (let ((a!1 (and (compare_1 1
                           compare@%_call_0
                           compare@%_2_0
                           compare@%.0_0
                           compare@%i1.0_0
                           compare@%o1_0
                           compare@%o2_0
                           compare@%o1_length_0
                           compare@%i2.0_0
                           compare@%o2_length_0
                           compare@%o1_count_0
                           compare@%o2_count_0)
                true
                (=> compare@_19_0 (and compare@_19_0 compare@_i2.0_0))
                (=> (and compare@_19_0 compare@_i2.0_0)
                    (< compare@%i2.0_0 compare@%o2_length_0))
                (= compare@%_call9_0 (+ compare@%o1_0 (* compare@%i2.0_0 4)))
                (=> compare@_19_0
                    (or (<= compare@%o1_0 0) (> compare@%_call9_0 0)))
                (=> compare@_19_0 (> compare@%o1_0 0))
                (=> compare@_19_0
                    (= compare@%_21_0
                       (select compare@%_call_0 compare@%_call9_0)))
                (= compare@%_call10_0 (+ compare@%o2_0 (* compare@%i2.0_0 4)))
                (=> compare@_19_0
                    (or (<= compare@%o2_0 0) (> compare@%_call10_0 0)))
                (=> compare@_19_0 (> compare@%o2_0 0))
                (=> compare@_19_0
                    (= compare@%_23_0 (select compare@%_2_0 compare@%_call10_0)))
                (=> compare@_25_0 (and compare@_25_0 compare@_19_0))
                (=> (and compare@_25_0 compare@_19_0)
                    (not (< compare@%_21_0 compare@%_23_0)))
                (=> compare@_i2.0_1 (and compare@_i2.0_1 compare@_25_0))
                compare@_i2.0_1
                (= compare@%i2.0_1 (+ compare@%i2.0_0 1))
                (=> (and compare@_i2.0_1 compare@_25_0)
                    (= compare@%i2.0_2 compare@%i2.0_1)))))
  (=> a!1
      (compare_1 1
                 compare@%_call_0
                 compare@%_2_0
                 compare@%.0_0
                 compare@%i1.0_0
                 compare@%o1_0
                 compare@%o2_0
                 compare@%o1_length_0
                 compare@%i2.0_2
                 compare@%o2_length_0
                 compare@%o1_count_0
                 compare@%o2_count_0))))
(rule (let ((a!1 (and (compare_1 1
                           compare@%_call_0
                           compare@%_2_0
                           compare@%.0_0
                           compare@%i1.0_0
                           compare@%o1_0
                           compare@%o2_0
                           compare@%o1_length_0
                           compare@%i2.0_0
                           compare@%o2_length_0
                           compare@%o1_count_0
                           compare@%o2_count_0)
                true
                (=> compare@_19_0 (and compare@_19_0 compare@_i2.0_0))
                (=> (and compare@_19_0 compare@_i2.0_0)
                    (< compare@%i2.0_0 compare@%o2_length_0))
                (= compare@%_call9_0 (+ compare@%o1_0 (* compare@%i2.0_0 4)))
                (=> compare@_19_0
                    (or (<= compare@%o1_0 0) (> compare@%_call9_0 0)))
                (=> compare@_19_0 (> compare@%o1_0 0))
                (=> compare@_19_0
                    (= compare@%_21_0
                       (select compare@%_call_0 compare@%_call9_0)))
                (= compare@%_call10_0 (+ compare@%o2_0 (* compare@%i2.0_0 4)))
                (=> compare@_19_0
                    (or (<= compare@%o2_0 0) (> compare@%_call10_0 0)))
                (=> compare@_19_0 (> compare@%o2_0 0))
                (=> compare@_19_0
                    (= compare@%_23_0 (select compare@%_2_0 compare@%_call10_0)))
                (=> |tuple(compare@_19_0, compare@_.0_0)| compare@_19_0)
                (=> |tuple(compare@_i2.0_0, compare@_.0_0)| compare@_i2.0_0)
                (=> compare@_.0_0
                    (or (and compare@_19_0
                             |tuple(compare@_19_0, compare@_.0_0)|)
                        (and compare@_i2.0_0
                             |tuple(compare@_i2.0_0, compare@_.0_0)|)))
                (=> (and compare@_19_0 |tuple(compare@_19_0, compare@_.0_0)|)
                    (< compare@%_21_0 compare@%_23_0))
                (= compare@%.0_1 (- 1))
                (=> (and compare@_i2.0_0
                         |tuple(compare@_i2.0_0, compare@_.0_0)|)
                    (not (< compare@%i2.0_0 compare@%o2_length_0)))
                (= compare@%.0_2 1)
                (=> (and compare@_19_0 |tuple(compare@_19_0, compare@_.0_0)|)
                    (= compare@%.0_3 compare@%.0_1))
                (=> (and compare@_i2.0_0
                         |tuple(compare@_i2.0_0, compare@_.0_0)|)
                    (= compare@%.0_3 compare@%.0_2))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!1
      (compare_1 3
                 compare@%_call_0
                 compare@%_2_0
                 compare@%.0_3
                 compare@%i1.0_0
                 compare@%o1_0
                 compare@%o2_0
                 compare@%o1_length_0
                 compare@%i2.0_0
                 compare@%o2_length_0
                 compare@%o1_count_0
                 compare@%o2_count_0))))
(rule (let ((a!1 (and (compare_1 2
                           compare@%_call_0
                           compare@%_2_0
                           compare@%.0_0
                           compare@%i1.0_0
                           compare@%o1_0
                           compare@%o2_0
                           compare@%o1_length_0
                           compare@%i2.0_0
                           compare@%o2_length_0
                           compare@%o1_count_0
                           compare@%o2_count_0)
                true
                (=> compare@_9_0 (and compare@_9_0 compare@_i1.0_0))
                (=> (and compare@_9_0 compare@_i1.0_0)
                    (< compare@%i1.0_0 compare@%o1_length_0))
                (= compare@%_call4_0 (+ compare@%o1_0 (* compare@%i1.0_0 4)))
                (=> compare@_9_0
                    (or (<= compare@%o1_0 0) (> compare@%_call4_0 0)))
                (=> compare@_9_0 (> compare@%o1_0 0))
                (=> compare@_9_0
                    (= compare@%_11_0
                       (select compare@%_call_0 compare@%_call4_0)))
                (= compare@%_call5_0 (+ compare@%o2_0 (* compare@%i1.0_0 4)))
                (=> compare@_9_0
                    (or (<= compare@%o2_0 0) (> compare@%_call5_0 0)))
                (=> compare@_9_0 (> compare@%o2_0 0))
                (=> compare@_9_0
                    (= compare@%_13_0 (select compare@%_2_0 compare@%_call5_0)))
                (=> compare@_15_0 (and compare@_15_0 compare@_9_0))
                (=> (and compare@_15_0 compare@_9_0)
                    (not (< compare@%_11_0 compare@%_13_0)))
                (=> compare@_i1.0_1 (and compare@_i1.0_1 compare@_15_0))
                compare@_i1.0_1
                (= compare@%i1.0_1 (+ compare@%i1.0_0 1))
                (=> (and compare@_i1.0_1 compare@_15_0)
                    (= compare@%i1.0_2 compare@%i1.0_1)))))
  (=> a!1
      (compare_1 2
                 compare@%_call_0
                 compare@%_2_0
                 compare@%.0_0
                 compare@%i1.0_2
                 compare@%o1_0
                 compare@%o2_0
                 compare@%o1_length_0
                 compare@%i2.0_0
                 compare@%o2_length_0
                 compare@%o1_count_0
                 compare@%o2_count_0))))
(rule (let ((a!1 (and (compare_1 2
                           compare@%_call_0
                           compare@%_2_0
                           compare@%.0_0
                           compare@%i1.0_0
                           compare@%o1_0
                           compare@%o2_0
                           compare@%o1_length_0
                           compare@%i2.0_0
                           compare@%o2_length_0
                           compare@%o1_count_0
                           compare@%o2_count_0)
                true
                (=> compare@_9_0 (and compare@_9_0 compare@_i1.0_0))
                (=> (and compare@_9_0 compare@_i1.0_0)
                    (< compare@%i1.0_0 compare@%o1_length_0))
                (= compare@%_call4_0 (+ compare@%o1_0 (* compare@%i1.0_0 4)))
                (=> compare@_9_0
                    (or (<= compare@%o1_0 0) (> compare@%_call4_0 0)))
                (=> compare@_9_0 (> compare@%o1_0 0))
                (=> compare@_9_0
                    (= compare@%_11_0
                       (select compare@%_call_0 compare@%_call4_0)))
                (= compare@%_call5_0 (+ compare@%o2_0 (* compare@%i1.0_0 4)))
                (=> compare@_9_0
                    (or (<= compare@%o2_0 0) (> compare@%_call5_0 0)))
                (=> compare@_9_0 (> compare@%o2_0 0))
                (=> compare@_9_0
                    (= compare@%_13_0 (select compare@%_2_0 compare@%_call5_0)))
                (=> |tuple(compare@_9_0, compare@_.0_0)| compare@_9_0)
                (=> |tuple(compare@_i1.0_0, compare@_.0_0)| compare@_i1.0_0)
                (=> compare@_.0_0
                    (or (and compare@_9_0 |tuple(compare@_9_0, compare@_.0_0)|)
                        (and compare@_i1.0_0
                             |tuple(compare@_i1.0_0, compare@_.0_0)|)))
                (=> (and compare@_9_0 |tuple(compare@_9_0, compare@_.0_0)|)
                    (< compare@%_11_0 compare@%_13_0))
                (= compare@%.0_1 1)
                (=> (and compare@_i1.0_0
                         |tuple(compare@_i1.0_0, compare@_.0_0)|)
                    (not (< compare@%i1.0_0 compare@%o1_length_0)))
                (= compare@%.0_2 (- 1))
                (=> (and compare@_9_0 |tuple(compare@_9_0, compare@_.0_0)|)
                    (= compare@%.0_3 compare@%.0_1))
                (=> (and compare@_i1.0_0
                         |tuple(compare@_i1.0_0, compare@_.0_0)|)
                    (= compare@%.0_3 compare@%.0_2))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!1
      (compare_1 3
                 compare@%_call_0
                 compare@%_2_0
                 compare@%.0_3
                 compare@%i1.0_0
                 compare@%o1_0
                 compare@%o2_0
                 compare@%o1_length_0
                 compare@%i2.0_0
                 compare@%o2_length_0
                 compare@%o1_count_0
                 compare@%o2_count_0))))
(rule (=> (compare_1 3
               compare@%_call_0
               compare@%_2_0
               compare@%.0_0
               compare@%i1.0_0
               compare@%o1_0
               compare@%o2_0
               compare@%o1_length_0
               compare@%i2.0_0
               compare@%o2_length_0
               compare@%o1_count_0
               compare@%o2_count_0)
    (compare true
             false
             false
             compare@%_call_0
             compare@%_2_0
             compare@%o1_count_0
             compare@%o2_count_0
             compare@%o1_length_0
             compare@%o2_length_0
             compare@%o1_0
             compare@%o2_0
             compare@%.0_0)))
(rule (main_1 0))
(rule (=> (and (main_1 0)
         true
         (compare true
                  false
                  false
                  main@%_call_0
                  main@%_2_0
                  main@%_4_0
                  main@%_5_0
                  main@%_6_0
                  main@%_7_0
                  main@%_8_0
                  main@%_call2_0
                  main@%_br_0)
         (=> main@.split_0 (and main@.split_0 main@_1_0))
         main@.split_0)
    (main_1 1)))
