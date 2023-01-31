(set-info :original "NzbFile-true.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool (Array Int Int) (Array Int Int) Int Int Int Int Int Int Int ))
(declare-rel compare_1 (Int (Array Int Int) (Array Int Int) Int Int Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%_call9_0 Int )
(declare-var compare@%_28_0 Int )
(declare-var compare@%_call6_0 Int )
(declare-var compare@%_22_0 Int )
(declare-var compare@%_call4_0 Int )
(declare-var compare@%_18_0 Int )
(declare-var compare@%_call2_0 Int )
(declare-var compare@%_14_0 Int )
(declare-var compare@%UnifiedRetVal_2 Int )
(declare-var compare@%_call_0 (Array Int Int) )
(declare-var compare@%_2_0 (Array Int Int) )
(declare-var compare@%o1_getFileName_0 Int )
(declare-var compare@%o2_getFileName_0 Int )
(declare-var compare@%o1_getFileName_toLowerCase_endsWith_0 Int )
(declare-var compare@%o2_getFileName_toLowerCase_endsWith_0 Int )
(declare-var compare@%o1_getSubject_0 Int )
(declare-var compare@%o2_getSubject_0 Int )
(declare-var compare@%UnifiedRetVal_0 Int )
(declare-var compare@%i.0_0 Int )
(declare-var compare@_1_0 Bool )
(declare-var compare@_7_0 Bool )
(declare-var compare@_i.0_0 Bool )
(declare-var compare@%i.0_1 Int )
(declare-var compare@%i.0_2 Int )
(declare-var compare@_36_0 Bool )
(declare-var compare@_39_0 Bool )
(declare-var compare@%._0 Int )
(declare-var compare@_.0_0 Bool )
(declare-var |tuple(compare@_36_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_1_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_0 Int )
(declare-var compare@%.0_1 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@UnifiedReturnBlock_0 Bool )
(declare-var compare@%UnifiedRetVal_1 Int )
(declare-var compare@%UnifiedRetVal_3 Int )
(declare-var compare@UnifiedReturnBlock.split_0 Bool )
(declare-var compare@_12_0 Bool )
(declare-var compare@_16_0 Bool )
(declare-var compare@_20_0 Bool )
(declare-var |tuple(compare@_16_0, compare@_20_0)| Bool )
(declare-var |tuple(compare@_12_0, compare@_20_0)| Bool )
(declare-var compare@_26_0 Bool )
(declare-var compare@_32_0 Bool )
(declare-var compare@_i.0_1 Bool )
(declare-var compare@_34_0 Bool )
(declare-var compare@_24_0 Bool )
(declare-var compare@_30_0 Bool )
(declare-var |tuple(compare@_16_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_3 Int )
(declare-var compare@%.0_4 Int )
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
           compare@%i.0_0
           compare@%o2_getFileName_toLowerCase_endsWith_0
           compare@%o1_getFileName_toLowerCase_endsWith_0
           compare@%o1_getFileName_0
           compare@%o2_getFileName_0
           compare@%o1_getSubject_0
           compare@%o2_getSubject_0))
(rule (let ((a!1 (=> (and compare@_7_0 compare@_1_0)
               (not (and (= compare@%o1_getFileName_0 compare@%o2_getFileName_0)
                         (= compare@%o1_getFileName_toLowerCase_endsWith_0
                            compare@%o2_getFileName_toLowerCase_endsWith_0)
                         (= compare@%o1_getSubject_0 compare@%o2_getSubject_0)))))
      (a!2 (=> (and compare@_i.0_0 compare@_7_0)
               (and (not (= compare@%o1_getFileName_0 0))
                    (not (= compare@%o2_getFileName_0 0))))))
  (=> (and (compare_1 0
                      compare@%_call_0
                      compare@%_2_0
                      compare@%UnifiedRetVal_0
                      compare@%i.0_0
                      compare@%o2_getFileName_toLowerCase_endsWith_0
                      compare@%o1_getFileName_toLowerCase_endsWith_0
                      compare@%o1_getFileName_0
                      compare@%o2_getFileName_0
                      compare@%o1_getSubject_0
                      compare@%o2_getSubject_0)
           true
           (=> compare@_7_0 (and compare@_7_0 compare@_1_0))
           a!1
           (=> compare@_i.0_0 (and compare@_i.0_0 compare@_7_0))
           compare@_i.0_0
           a!2
           (= compare@%i.0_1 0)
           (=> (and compare@_i.0_0 compare@_7_0)
               (= compare@%i.0_2 compare@%i.0_1)))
      (compare_1 1
                 compare@%_call_0
                 compare@%_2_0
                 compare@%UnifiedRetVal_0
                 compare@%i.0_2
                 compare@%o2_getFileName_toLowerCase_endsWith_0
                 compare@%o1_getFileName_toLowerCase_endsWith_0
                 compare@%o1_getFileName_0
                 compare@%o2_getFileName_0
                 compare@%o1_getSubject_0
                 compare@%o2_getSubject_0))))
(rule (let ((a!1 (and (= compare@%o1_getFileName_0 compare@%o2_getFileName_0)
                (= compare@%o1_getFileName_toLowerCase_endsWith_0
                   compare@%o2_getFileName_toLowerCase_endsWith_0)
                (= compare@%o1_getSubject_0 compare@%o2_getSubject_0)))
      (a!2 (not (and (not (= compare@%o1_getFileName_0 0))
                     (not (= compare@%o2_getFileName_0 0)))))
      (a!3 (not (and (not (= compare@%o1_getFileName_0 0))
                     (= compare@%o2_getFileName_0 0))))
      (a!4 (ite (and (= compare@%o1_getFileName_0 0)
                     (not (= compare@%o2_getFileName_0 0)))
                1005
                (- compare@%o1_getSubject_0 compare@%o2_getSubject_0)))
      (a!5 (=> (and compare@_36_0 |tuple(compare@_36_0, compare@_.0_0)|)
               (and (not (= compare@%o1_getFileName_0 0))
                    (= compare@%o2_getFileName_0 0)))))
(let ((a!6 (and (compare_1 0
                           compare@%_call_0
                           compare@%_2_0
                           compare@%UnifiedRetVal_0
                           compare@%i.0_0
                           compare@%o2_getFileName_toLowerCase_endsWith_0
                           compare@%o1_getFileName_toLowerCase_endsWith_0
                           compare@%o1_getFileName_0
                           compare@%o2_getFileName_0
                           compare@%o1_getSubject_0
                           compare@%o2_getSubject_0)
                true
                (=> compare@_7_0 (and compare@_7_0 compare@_1_0))
                (=> (and compare@_7_0 compare@_1_0) (not a!1))
                (=> compare@_36_0 (and compare@_36_0 compare@_7_0))
                (=> (and compare@_36_0 compare@_7_0) a!2)
                (=> compare@_39_0 (and compare@_39_0 compare@_36_0))
                (=> (and compare@_39_0 compare@_36_0) a!3)
                (= compare@%._0 a!4)
                (=> |tuple(compare@_36_0, compare@_.0_0)| compare@_36_0)
                (=> |tuple(compare@_1_0, compare@_.0_0)| compare@_1_0)
                (=> compare@_.0_0
                    (or (and compare@_36_0
                             |tuple(compare@_36_0, compare@_.0_0)|)
                        (and compare@_1_0 |tuple(compare@_1_0, compare@_.0_0)|)))
                a!5
                (= compare@%.0_0 (- 995))
                (=> (and compare@_1_0 |tuple(compare@_1_0, compare@_.0_0)|) a!1)
                (= compare@%.0_1 0)
                (=> (and compare@_36_0 |tuple(compare@_36_0, compare@_.0_0)|)
                    (= compare@%.0_2 compare@%.0_0))
                (=> (and compare@_1_0 |tuple(compare@_1_0, compare@_.0_0)|)
                    (= compare@%.0_2 compare@%.0_1))
                (=> compare@UnifiedReturnBlock_0
                    (or (and compare@UnifiedReturnBlock_0 compare@_.0_0)
                        (and compare@UnifiedReturnBlock_0 compare@_39_0)))
                (= compare@%UnifiedRetVal_1 compare@%.0_2)
                (= compare@%UnifiedRetVal_2 compare@%._0)
                (=> (and compare@UnifiedReturnBlock_0 compare@_.0_0)
                    (= compare@%UnifiedRetVal_3 compare@%UnifiedRetVal_1))
                (=> (and compare@UnifiedReturnBlock_0 compare@_39_0)
                    (= compare@%UnifiedRetVal_3 compare@%UnifiedRetVal_2))
                (=> compare@UnifiedReturnBlock.split_0
                    (and compare@UnifiedReturnBlock.split_0
                         compare@UnifiedReturnBlock_0))
                compare@UnifiedReturnBlock.split_0)))
  (=> a!6
      (compare_1 2
                 compare@%_call_0
                 compare@%_2_0
                 compare@%UnifiedRetVal_3
                 compare@%i.0_0
                 compare@%o2_getFileName_toLowerCase_endsWith_0
                 compare@%o1_getFileName_toLowerCase_endsWith_0
                 compare@%o1_getFileName_0
                 compare@%o2_getFileName_0
                 compare@%o1_getSubject_0
                 compare@%o2_getSubject_0)))))
(rule (let ((a!1 (and (compare_1 1
                           compare@%_call_0
                           compare@%_2_0
                           compare@%UnifiedRetVal_0
                           compare@%i.0_0
                           compare@%o2_getFileName_toLowerCase_endsWith_0
                           compare@%o1_getFileName_toLowerCase_endsWith_0
                           compare@%o1_getFileName_0
                           compare@%o2_getFileName_0
                           compare@%o1_getSubject_0
                           compare@%o2_getSubject_0)
                true
                (=> compare@_12_0 (and compare@_12_0 compare@_i.0_0))
                (=> (and compare@_12_0 compare@_i.0_0) (< compare@%i.0_0 5))
                (= compare@%_call2_0
                   (+ compare@%o1_getFileName_toLowerCase_endsWith_0
                      (* compare@%i.0_0 4)))
                (=> compare@_12_0
                    (or (<= compare@%o1_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call2_0 0)))
                (=> compare@_12_0
                    (> compare@%o1_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_12_0
                    (= compare@%_14_0
                       (select compare@%_call_0 compare@%_call2_0)))
                (=> compare@_16_0 (and compare@_16_0 compare@_12_0))
                (=> (and compare@_16_0 compare@_12_0)
                    (not (= compare@%_14_0 0)))
                (= compare@%_call4_0
                   (+ compare@%o2_getFileName_toLowerCase_endsWith_0
                      (* compare@%i.0_0 4)))
                (=> compare@_16_0
                    (or (<= compare@%o2_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call4_0 0)))
                (=> compare@_16_0
                    (> compare@%o2_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_16_0
                    (= compare@%_18_0 (select compare@%_2_0 compare@%_call4_0)))
                (=> |tuple(compare@_16_0, compare@_20_0)| compare@_16_0)
                (=> |tuple(compare@_12_0, compare@_20_0)| compare@_12_0)
                (=> compare@_20_0
                    (or (and compare@_16_0
                             |tuple(compare@_16_0, compare@_20_0)|)
                        (and compare@_12_0
                             |tuple(compare@_12_0, compare@_20_0)|)))
                (=> (and compare@_16_0 |tuple(compare@_16_0, compare@_20_0)|)
                    (= compare@%_18_0 0))
                (=> (and compare@_12_0 |tuple(compare@_12_0, compare@_20_0)|)
                    (= compare@%_14_0 0))
                (= compare@%_call6_0
                   (+ compare@%o1_getFileName_toLowerCase_endsWith_0
                      (* compare@%i.0_0 4)))
                (=> compare@_20_0
                    (or (<= compare@%o1_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call6_0 0)))
                (=> compare@_20_0
                    (> compare@%o1_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_20_0
                    (= compare@%_22_0
                       (select compare@%_call_0 compare@%_call6_0)))
                (=> compare@_26_0 (and compare@_26_0 compare@_20_0))
                (=> (and compare@_26_0 compare@_20_0) (= compare@%_22_0 0))
                (= compare@%_call9_0
                   (+ compare@%o2_getFileName_toLowerCase_endsWith_0
                      (* compare@%i.0_0 4)))
                (=> compare@_26_0
                    (or (<= compare@%o2_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call9_0 0)))
                (=> compare@_26_0
                    (> compare@%o2_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_26_0
                    (= compare@%_28_0 (select compare@%_2_0 compare@%_call9_0)))
                (=> compare@_32_0 (and compare@_32_0 compare@_26_0))
                (=> (and compare@_32_0 compare@_26_0) (= compare@%_28_0 0))
                (=> compare@_i.0_1 (and compare@_i.0_1 compare@_32_0))
                compare@_i.0_1
                (= compare@%i.0_1 (+ compare@%i.0_0 1))
                (=> (and compare@_i.0_1 compare@_32_0)
                    (= compare@%i.0_2 compare@%i.0_1)))))
  (=> a!1
      (compare_1 1
                 compare@%_call_0
                 compare@%_2_0
                 compare@%UnifiedRetVal_0
                 compare@%i.0_2
                 compare@%o2_getFileName_toLowerCase_endsWith_0
                 compare@%o1_getFileName_toLowerCase_endsWith_0
                 compare@%o1_getFileName_0
                 compare@%o2_getFileName_0
                 compare@%o1_getSubject_0
                 compare@%o2_getSubject_0))))
(rule (let ((a!1 (and (compare_1 1
                           compare@%_call_0
                           compare@%_2_0
                           compare@%UnifiedRetVal_0
                           compare@%i.0_0
                           compare@%o2_getFileName_toLowerCase_endsWith_0
                           compare@%o1_getFileName_toLowerCase_endsWith_0
                           compare@%o1_getFileName_0
                           compare@%o2_getFileName_0
                           compare@%o1_getSubject_0
                           compare@%o2_getSubject_0)
                true
                (=> compare@_34_0 (and compare@_34_0 compare@_i.0_0))
                (=> (and compare@_34_0 compare@_i.0_0)
                    (not (< compare@%i.0_0 5)))
                (=> compare@_12_0 (and compare@_12_0 compare@_i.0_0))
                (=> (and compare@_12_0 compare@_i.0_0) (< compare@%i.0_0 5))
                (= compare@%_call2_0
                   (+ compare@%o1_getFileName_toLowerCase_endsWith_0
                      (* compare@%i.0_0 4)))
                (=> compare@_12_0
                    (or (<= compare@%o1_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call2_0 0)))
                (=> compare@_12_0
                    (> compare@%o1_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_12_0
                    (= compare@%_14_0
                       (select compare@%_call_0 compare@%_call2_0)))
                (=> compare@_16_0 (and compare@_16_0 compare@_12_0))
                (=> (and compare@_16_0 compare@_12_0)
                    (not (= compare@%_14_0 0)))
                (= compare@%_call4_0
                   (+ compare@%o2_getFileName_toLowerCase_endsWith_0
                      (* compare@%i.0_0 4)))
                (=> compare@_16_0
                    (or (<= compare@%o2_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call4_0 0)))
                (=> compare@_16_0
                    (> compare@%o2_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_16_0
                    (= compare@%_18_0 (select compare@%_2_0 compare@%_call4_0)))
                (=> |tuple(compare@_16_0, compare@_20_0)| compare@_16_0)
                (=> |tuple(compare@_12_0, compare@_20_0)| compare@_12_0)
                (=> compare@_20_0
                    (or (and compare@_16_0
                             |tuple(compare@_16_0, compare@_20_0)|)
                        (and compare@_12_0
                             |tuple(compare@_12_0, compare@_20_0)|)))
                (=> (and compare@_16_0 |tuple(compare@_16_0, compare@_20_0)|)
                    (= compare@%_18_0 0))
                (=> (and compare@_12_0 |tuple(compare@_12_0, compare@_20_0)|)
                    (= compare@%_14_0 0))
                (= compare@%_call6_0
                   (+ compare@%o1_getFileName_toLowerCase_endsWith_0
                      (* compare@%i.0_0 4)))
                (=> compare@_20_0
                    (or (<= compare@%o1_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call6_0 0)))
                (=> compare@_20_0
                    (> compare@%o1_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_20_0
                    (= compare@%_22_0
                       (select compare@%_call_0 compare@%_call6_0)))
                (=> compare@_24_0 (and compare@_24_0 compare@_20_0))
                (=> (and compare@_24_0 compare@_20_0)
                    (not (= compare@%_22_0 0)))
                (=> compare@_26_0 (and compare@_26_0 compare@_20_0))
                (=> (and compare@_26_0 compare@_20_0) (= compare@%_22_0 0))
                (= compare@%_call9_0
                   (+ compare@%o2_getFileName_toLowerCase_endsWith_0
                      (* compare@%i.0_0 4)))
                (=> compare@_26_0
                    (or (<= compare@%o2_getFileName_toLowerCase_endsWith_0 0)
                        (> compare@%_call9_0 0)))
                (=> compare@_26_0
                    (> compare@%o2_getFileName_toLowerCase_endsWith_0 0))
                (=> compare@_26_0
                    (= compare@%_28_0 (select compare@%_2_0 compare@%_call9_0)))
                (=> compare@_30_0 (and compare@_30_0 compare@_26_0))
                (=> (and compare@_30_0 compare@_26_0)
                    (not (= compare@%_28_0 0)))
                (=> |tuple(compare@_16_0, compare@_.0_0)| compare@_16_0)
                (=> compare@_.0_0
                    (or (and compare@_.0_0 compare@_34_0)
                        (and compare@_.0_0 compare@_30_0)
                        (and compare@_.0_0 compare@_24_0)
                        (and compare@_16_0
                             |tuple(compare@_16_0, compare@_.0_0)|)))
                (= compare@%.0_0
                   (- compare@%o1_getFileName_0 compare@%o2_getFileName_0))
                (= compare@%.0_1 (+ compare@%i.0_0 1000))
                (= compare@%.0_2 (+ compare@%i.0_0 (- 1000)))
                (=> (and compare@_16_0 |tuple(compare@_16_0, compare@_.0_0)|)
                    (not (= compare@%_18_0 0)))
                (= compare@%.0_3 0)
                (=> (and compare@_.0_0 compare@_34_0)
                    (= compare@%.0_4 compare@%.0_0))
                (=> (and compare@_.0_0 compare@_30_0)
                    (= compare@%.0_4 compare@%.0_1))
                (=> (and compare@_.0_0 compare@_24_0)
                    (= compare@%.0_4 compare@%.0_2))
                (=> (and compare@_16_0 |tuple(compare@_16_0, compare@_.0_0)|)
                    (= compare@%.0_4 compare@%.0_3))
                (=> compare@UnifiedReturnBlock_0
                    (and compare@UnifiedReturnBlock_0 compare@_.0_0))
                (= compare@%UnifiedRetVal_1 compare@%.0_4)
                (=> (and compare@UnifiedReturnBlock_0 compare@_.0_0)
                    (= compare@%UnifiedRetVal_2 compare@%UnifiedRetVal_1))
                (=> compare@UnifiedReturnBlock.split_0
                    (and compare@UnifiedReturnBlock.split_0
                         compare@UnifiedReturnBlock_0))
                compare@UnifiedReturnBlock.split_0)))
  (=> a!1
      (compare_1 2
                 compare@%_call_0
                 compare@%_2_0
                 compare@%UnifiedRetVal_2
                 compare@%i.0_0
                 compare@%o2_getFileName_toLowerCase_endsWith_0
                 compare@%o1_getFileName_toLowerCase_endsWith_0
                 compare@%o1_getFileName_0
                 compare@%o2_getFileName_0
                 compare@%o1_getSubject_0
                 compare@%o2_getSubject_0))))
(rule (=> (compare_1 2
               compare@%_call_0
               compare@%_2_0
               compare@%UnifiedRetVal_0
               compare@%i.0_0
               compare@%o2_getFileName_toLowerCase_endsWith_0
               compare@%o1_getFileName_toLowerCase_endsWith_0
               compare@%o1_getFileName_0
               compare@%o2_getFileName_0
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
