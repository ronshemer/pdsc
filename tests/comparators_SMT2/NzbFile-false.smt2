(set-info :original "NzbFile-false.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool (Array Int Int) (Array Int Int) Int Int Int Int Int Int Int ))
(declare-rel compare_1 (Int (Array Int Int) (Array Int Int) Int Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%_call19_0 Int )
(declare-var compare@%_44_0 Int )
(declare-var compare@%UnifiedRetVal_2 Int )
(declare-var compare@%_call17_0 Int )
(declare-var compare@%_40_0 Int )
(declare-var compare@%_call15_0 Int )
(declare-var compare@%_36_0 Int )
(declare-var compare@%_call13_0 Int )
(declare-var compare@%_32_0 Int )
(declare-var compare@%_call11_0 Int )
(declare-var compare@%_28_0 Int )
(declare-var compare@%_call9_0 Int )
(declare-var compare@%_24_0 Int )
(declare-var compare@%_call7_0 Int )
(declare-var compare@%_20_0 Int )
(declare-var compare@%_call5_0 Int )
(declare-var compare@%_16_0 Int )
(declare-var compare@%_call3_0 Int )
(declare-var compare@%_12_0 Int )
(declare-var compare@%_call2_0 Int )
(declare-var compare@%_8_0 Int )
(declare-var compare@%o1_getSubject_0 Int )
(declare-var compare@%o2_getSubject_0 Int )
(declare-var compare@%.0_11 Int )
(declare-var compare@%_call_0 (Array Int Int) )
(declare-var compare@%_2_0 (Array Int Int) )
(declare-var compare@%o1_getFileName_0 Int )
(declare-var compare@%o2_getFileName_0 Int )
(declare-var compare@%o1_getFileName_toLowerCase_endsWith_0 Int )
(declare-var compare@%o2_getFileName_toLowerCase_endsWith_0 Int )
(declare-var compare@%UnifiedRetVal_0 Int )
(declare-var compare@_1_0 Bool )
(declare-var compare@_47_0 Bool )
(declare-var compare@_50_0 Bool )
(declare-var compare@%.6_0 Int )
(declare-var compare@_6_0 Bool )
(declare-var compare@_10_0 Bool )
(declare-var compare@_14_0 Bool )
(declare-var compare@_18_0 Bool )
(declare-var compare@_22_0 Bool )
(declare-var compare@_26_0 Bool )
(declare-var compare@_30_0 Bool )
(declare-var compare@_34_0 Bool )
(declare-var compare@_38_0 Bool )
(declare-var compare@_.0_0 Bool )
(declare-var |tuple(compare@_47_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_38_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_34_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_30_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_26_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_22_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_18_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_14_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_10_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_6_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_0 Int )
(declare-var compare@%.0_1 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@%.0_3 Int )
(declare-var compare@%.0_4 Int )
(declare-var compare@%.0_5 Int )
(declare-var compare@%.0_6 Int )
(declare-var compare@%.0_7 Int )
(declare-var compare@%.0_8 Int )
(declare-var compare@%.0_9 Int )
(declare-var compare@%.0_10 Int )
(declare-var compare@_42_0 Bool )
(declare-var compare@%._0 Int )
(declare-var compare@UnifiedReturnBlock_0 Bool )
(declare-var compare@%UnifiedRetVal_1 Int )
(declare-var compare@%UnifiedRetVal_3 Int )
(declare-var compare@UnifiedReturnBlock.split_0 Bool )
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
         compare@%o1_getFileName_0
         compare@%o2_getFileName_0
         compare@%o1_getFileName_toLowerCase_endsWith_0
         compare@%o2_getFileName_toLowerCase_endsWith_0
         compare@%o1_getSubject_0
         compare@%o2_getSubject_0
         compare@%UnifiedRetVal_0))
(rule (compare false
         true
         true
         compare@%_call_0
         compare@%_2_0
         compare@%o1_getFileName_0
         compare@%o2_getFileName_0
         compare@%o1_getFileName_toLowerCase_endsWith_0
         compare@%o2_getFileName_toLowerCase_endsWith_0
         compare@%o1_getSubject_0
         compare@%o2_getSubject_0
         compare@%UnifiedRetVal_0))
(rule (compare false
         false
         false
         compare@%_call_0
         compare@%_2_0
         compare@%o1_getFileName_0
         compare@%o2_getFileName_0
         compare@%o1_getFileName_toLowerCase_endsWith_0
         compare@%o2_getFileName_toLowerCase_endsWith_0
         compare@%o1_getSubject_0
         compare@%o2_getSubject_0
         compare@%UnifiedRetVal_0))
(rule (compare_1 0
           compare@%_call_0
           compare@%_2_0
           compare@%UnifiedRetVal_0
           compare@%o2_getFileName_toLowerCase_endsWith_0
           compare@%o1_getFileName_0
           compare@%o2_getFileName_0
           compare@%o1_getFileName_toLowerCase_endsWith_0
           compare@%o1_getSubject_0
           compare@%o2_getSubject_0))
(rule (let ((a!1 (not (and (not (= compare@%o1_getFileName_0 0))
                     (not (= compare@%o2_getFileName_0 0)))))
      (a!2 (not (and (not (= compare@%o1_getFileName_0 0))
                     (= compare@%o2_getFileName_0 0))))
      (a!3 (ite (and (= compare@%o1_getFileName_0 0)
                     (not (= compare@%o2_getFileName_0 0)))
                1005
                (- compare@%o1_getSubject_0 compare@%o2_getSubject_0)))
      (a!4 (=> (and compare@_6_0 compare@_1_0)
               (and (not (= compare@%o1_getFileName_0 0))
                    (not (= compare@%o2_getFileName_0 0)))))
      (a!5 (=> (and compare@_47_0 |tuple(compare@_47_0, compare@_.0_0)|)
               (and (not (= compare@%o1_getFileName_0 0))
                    (= compare@%o2_getFileName_0 0)))))
(let ((a!6 (and (compare_1 0
                           compare@%_call_0
                           compare@%_2_0
                           compare@%UnifiedRetVal_0
                           compare@%o2_getFileName_toLowerCase_endsWith_0
                           compare@%o1_getFileName_0
                           compare@%o2_getFileName_0
                           compare@%o1_getFileName_toLowerCase_endsWith_0
                           compare@%o1_getSubject_0
                           compare@%o2_getSubject_0)
                true
                (=> compare@_47_0 (and compare@_47_0 compare@_1_0))
                (=> (and compare@_47_0 compare@_1_0) a!1)
                (=> compare@_50_0 (and compare@_50_0 compare@_47_0))
                (=> (and compare@_50_0 compare@_47_0) a!2)
                (= compare@%.6_0 a!3)
                (=> compare@_6_0 (and compare@_6_0 compare@_1_0))
                a!4
                (= compare@%_call2_0
                   (+ compare@%o1_getFileName_toLowerCase_endsWith_0 (* 1 4)))
                (=> compare@_6_0
                    (or (<= compare@%o1_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call2_0 0)))
                (=> compare@_6_0
                    (> compare@%o1_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_6_0
                    (= compare@%_8_0
                       (select compare@%_call_0 compare@%_call2_0)))
                (=> compare@_10_0 (and compare@_10_0 compare@_6_0))
                (=> (and compare@_10_0 compare@_6_0) (= compare@%_8_0 0))
                (= compare@%_call3_0
                   (+ compare@%o2_getFileName_toLowerCase_endsWith_0 (* 1 4)))
                (=> compare@_10_0
                    (or (<= compare@%o2_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call3_0 0)))
                (=> compare@_10_0
                    (> compare@%o2_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_10_0
                    (= compare@%_12_0 (select compare@%_2_0 compare@%_call3_0)))
                (=> compare@_14_0 (and compare@_14_0 compare@_10_0))
                (=> (and compare@_14_0 compare@_10_0) (= compare@%_12_0 0))
                (= compare@%_call5_0
                   (+ compare@%o1_getFileName_toLowerCase_endsWith_0 (* 2 4)))
                (=> compare@_14_0
                    (or (<= compare@%o1_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call5_0 0)))
                (=> compare@_14_0
                    (> compare@%o1_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_14_0
                    (= compare@%_16_0
                       (select compare@%_call_0 compare@%_call5_0)))
                (=> compare@_18_0 (and compare@_18_0 compare@_14_0))
                (=> (and compare@_18_0 compare@_14_0) (= compare@%_16_0 0))
                (= compare@%_call7_0
                   (+ compare@%o2_getFileName_toLowerCase_endsWith_0 (* 2 4)))
                (=> compare@_18_0
                    (or (<= compare@%o2_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call7_0 0)))
                (=> compare@_18_0
                    (> compare@%o2_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_18_0
                    (= compare@%_20_0 (select compare@%_2_0 compare@%_call7_0)))
                (=> compare@_22_0 (and compare@_22_0 compare@_18_0))
                (=> (and compare@_22_0 compare@_18_0) (= compare@%_20_0 0))
                (= compare@%_call9_0
                   (+ compare@%o1_getFileName_toLowerCase_endsWith_0 (* 3 4)))
                (=> compare@_22_0
                    (or (<= compare@%o1_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call9_0 0)))
                (=> compare@_22_0
                    (> compare@%o1_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_22_0
                    (= compare@%_24_0
                       (select compare@%_call_0 compare@%_call9_0)))
                (=> compare@_26_0 (and compare@_26_0 compare@_22_0))
                (=> (and compare@_26_0 compare@_22_0) (= compare@%_24_0 0))
                (= compare@%_call11_0
                   (+ compare@%o2_getFileName_toLowerCase_endsWith_0 (* 3 4)))
                (=> compare@_26_0
                    (or (<= compare@%o2_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call11_0 0)))
                (=> compare@_26_0
                    (> compare@%o2_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_26_0
                    (= compare@%_28_0 (select compare@%_2_0 compare@%_call11_0)))
                (=> compare@_30_0 (and compare@_30_0 compare@_26_0))
                (=> (and compare@_30_0 compare@_26_0) (= compare@%_28_0 0))
                (= compare@%_call13_0
                   (+ compare@%o1_getFileName_toLowerCase_endsWith_0 (* 4 4)))
                (=> compare@_30_0
                    (or (<= compare@%o1_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call13_0 0)))
                (=> compare@_30_0
                    (> compare@%o1_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_30_0
                    (= compare@%_32_0
                       (select compare@%_call_0 compare@%_call13_0)))
                (=> compare@_34_0 (and compare@_34_0 compare@_30_0))
                (=> (and compare@_34_0 compare@_30_0) (= compare@%_32_0 0))
                (= compare@%_call15_0
                   (+ compare@%o2_getFileName_toLowerCase_endsWith_0 (* 4 4)))
                (=> compare@_34_0
                    (or (<= compare@%o2_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call15_0 0)))
                (=> compare@_34_0
                    (> compare@%o2_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_34_0
                    (= compare@%_36_0 (select compare@%_2_0 compare@%_call15_0)))
                (=> compare@_38_0 (and compare@_38_0 compare@_34_0))
                (=> (and compare@_38_0 compare@_34_0) (= compare@%_36_0 0))
                (= compare@%_call17_0
                   (+ compare@%o1_getFileName_toLowerCase_endsWith_0 (* 5 4)))
                (=> compare@_38_0
                    (or (<= compare@%o1_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call17_0 0)))
                (=> compare@_38_0
                    (> compare@%o1_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_38_0
                    (= compare@%_40_0
                       (select compare@%_call_0 compare@%_call17_0)))
                (=> |tuple(compare@_47_0, compare@_.0_0)| compare@_47_0)
                (=> |tuple(compare@_38_0, compare@_.0_0)| compare@_38_0)
                (=> |tuple(compare@_34_0, compare@_.0_0)| compare@_34_0)
                (=> |tuple(compare@_30_0, compare@_.0_0)| compare@_30_0)
                (=> |tuple(compare@_26_0, compare@_.0_0)| compare@_26_0)
                (=> |tuple(compare@_22_0, compare@_.0_0)| compare@_22_0)
                (=> |tuple(compare@_18_0, compare@_.0_0)| compare@_18_0)
                (=> |tuple(compare@_14_0, compare@_.0_0)| compare@_14_0)
                (=> |tuple(compare@_10_0, compare@_.0_0)| compare@_10_0)
                (=> |tuple(compare@_6_0, compare@_.0_0)| compare@_6_0)
                (=> compare@_.0_0
                    (or (and compare@_.0_0 compare@_50_0)
                        (and compare@_47_0
                             |tuple(compare@_47_0, compare@_.0_0)|)
                        (and compare@_38_0
                             |tuple(compare@_38_0, compare@_.0_0)|)
                        (and compare@_34_0
                             |tuple(compare@_34_0, compare@_.0_0)|)
                        (and compare@_30_0
                             |tuple(compare@_30_0, compare@_.0_0)|)
                        (and compare@_26_0
                             |tuple(compare@_26_0, compare@_.0_0)|)
                        (and compare@_22_0
                             |tuple(compare@_22_0, compare@_.0_0)|)
                        (and compare@_18_0
                             |tuple(compare@_18_0, compare@_.0_0)|)
                        (and compare@_14_0
                             |tuple(compare@_14_0, compare@_.0_0)|)
                        (and compare@_10_0
                             |tuple(compare@_10_0, compare@_.0_0)|)
                        (and compare@_6_0 |tuple(compare@_6_0, compare@_.0_0)|)))
                (= compare@%.0_0 compare@%.6_0)
                a!5
                (= compare@%.0_1 (- 995))
                (=> (and compare@_38_0 |tuple(compare@_38_0, compare@_.0_0)|)
                    (not (= compare@%_40_0 0)))
                (= compare@%.0_2 (- 996))
                (=> (and compare@_34_0 |tuple(compare@_34_0, compare@_.0_0)|)
                    (not (= compare@%_36_0 0)))
                (= compare@%.0_3 1003)
                (=> (and compare@_30_0 |tuple(compare@_30_0, compare@_.0_0)|)
                    (not (= compare@%_32_0 0)))
                (= compare@%.0_4 (- 997))
                (=> (and compare@_26_0 |tuple(compare@_26_0, compare@_.0_0)|)
                    (not (= compare@%_28_0 0)))
                (= compare@%.0_5 1002)
                (=> (and compare@_22_0 |tuple(compare@_22_0, compare@_.0_0)|)
                    (not (= compare@%_24_0 0)))
                (= compare@%.0_6 (- 998))
                (=> (and compare@_18_0 |tuple(compare@_18_0, compare@_.0_0)|)
                    (not (= compare@%_20_0 0)))
                (= compare@%.0_7 1001)
                (=> (and compare@_14_0 |tuple(compare@_14_0, compare@_.0_0)|)
                    (not (= compare@%_16_0 0)))
                (= compare@%.0_8 (- 999))
                (=> (and compare@_10_0 |tuple(compare@_10_0, compare@_.0_0)|)
                    (not (= compare@%_12_0 0)))
                (= compare@%.0_9 1000)
                (=> (and compare@_6_0 |tuple(compare@_6_0, compare@_.0_0)|)
                    (not (= compare@%_8_0 0)))
                (= compare@%.0_10 (- 1000))
                (=> (and compare@_.0_0 compare@_50_0)
                    (= compare@%.0_11 compare@%.0_0))
                (=> (and compare@_47_0 |tuple(compare@_47_0, compare@_.0_0)|)
                    (= compare@%.0_11 compare@%.0_1))
                (=> (and compare@_38_0 |tuple(compare@_38_0, compare@_.0_0)|)
                    (= compare@%.0_11 compare@%.0_2))
                (=> (and compare@_34_0 |tuple(compare@_34_0, compare@_.0_0)|)
                    (= compare@%.0_11 compare@%.0_3))
                (=> (and compare@_30_0 |tuple(compare@_30_0, compare@_.0_0)|)
                    (= compare@%.0_11 compare@%.0_4))
                (=> (and compare@_26_0 |tuple(compare@_26_0, compare@_.0_0)|)
                    (= compare@%.0_11 compare@%.0_5))
                (=> (and compare@_22_0 |tuple(compare@_22_0, compare@_.0_0)|)
                    (= compare@%.0_11 compare@%.0_6))
                (=> (and compare@_18_0 |tuple(compare@_18_0, compare@_.0_0)|)
                    (= compare@%.0_11 compare@%.0_7))
                (=> (and compare@_14_0 |tuple(compare@_14_0, compare@_.0_0)|)
                    (= compare@%.0_11 compare@%.0_8))
                (=> (and compare@_10_0 |tuple(compare@_10_0, compare@_.0_0)|)
                    (= compare@%.0_11 compare@%.0_9))
                (=> (and compare@_6_0 |tuple(compare@_6_0, compare@_.0_0)|)
                    (= compare@%.0_11 compare@%.0_10))
                (=> compare@_42_0 (and compare@_42_0 compare@_38_0))
                (=> (and compare@_42_0 compare@_38_0) (= compare@%_40_0 0))
                (= compare@%_call19_0
                   (+ compare@%o2_getFileName_toLowerCase_endsWith_0 (* 5 4)))
                (=> compare@_42_0
                    (or (<= compare@%o2_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call19_0 0)))
                (=> compare@_42_0
                    (> compare@%o2_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_42_0
                    (= compare@%_44_0 (select compare@%_2_0 compare@%_call19_0)))
                (= compare@%._0
                   (ite (= compare@%_44_0 0)
                        (- compare@%o1_getFileName_0 compare@%o2_getFileName_0)
                        1004))
                (=> compare@UnifiedReturnBlock_0
                    (or (and compare@UnifiedReturnBlock_0 compare@_.0_0)
                        (and compare@UnifiedReturnBlock_0 compare@_42_0)))
                (= compare@%UnifiedRetVal_1 compare@%.0_11)
                (= compare@%UnifiedRetVal_2 compare@%._0)
                (=> (and compare@UnifiedReturnBlock_0 compare@_.0_0)
                    (= compare@%UnifiedRetVal_3 compare@%UnifiedRetVal_1))
                (=> (and compare@UnifiedReturnBlock_0 compare@_42_0)
                    (= compare@%UnifiedRetVal_3 compare@%UnifiedRetVal_2))
                (=> compare@UnifiedReturnBlock.split_0
                    (and compare@UnifiedReturnBlock.split_0
                         compare@UnifiedReturnBlock_0))
                compare@UnifiedReturnBlock.split_0)))
  (=> a!6
      (compare_1 1
                 compare@%_call_0
                 compare@%_2_0
                 compare@%UnifiedRetVal_3
                 compare@%o2_getFileName_toLowerCase_endsWith_0
                 compare@%o1_getFileName_0
                 compare@%o2_getFileName_0
                 compare@%o1_getFileName_toLowerCase_endsWith_0
                 compare@%o1_getSubject_0
                 compare@%o2_getSubject_0)))))
(rule (=> (compare_1 1
               compare@%_call_0
               compare@%_2_0
               compare@%UnifiedRetVal_0
               compare@%o2_getFileName_toLowerCase_endsWith_0
               compare@%o1_getFileName_0
               compare@%o2_getFileName_0
               compare@%o1_getFileName_toLowerCase_endsWith_0
               compare@%o1_getSubject_0
               compare@%o2_getSubject_0)
    (compare true
             false
             false
             compare@%_call_0
             compare@%_2_0
             compare@%o1_getFileName_0
             compare@%o2_getFileName_0
             compare@%o1_getFileName_toLowerCase_endsWith_0
             compare@%o2_getFileName_toLowerCase_endsWith_0
             compare@%o1_getSubject_0
             compare@%o2_getSubject_0
             compare@%UnifiedRetVal_0)))
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
