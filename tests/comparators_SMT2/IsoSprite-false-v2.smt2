(set-info :original "IsoSprite-false-v2.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int ))
(declare-rel compare_1 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%o2_minX_0 Int )
(declare-var compare@%o2_minY_0 Int )
(declare-var compare@%o1_minZ_0 Int )
(declare-var compare@%o1_maxX_0 Int )
(declare-var compare@%o1_maxY_0 Int )
(declare-var compare@%o2_maxZ_0 Int )
(declare-var compare@%UnifiedRetVal_2 Int )
(declare-var compare@%.0_9 Int )
(declare-var compare@%o1_minX_0 Int )
(declare-var compare@%o1_minY_0 Int )
(declare-var compare@%o2_minZ_0 Int )
(declare-var compare@%o2_maxX_0 Int )
(declare-var compare@%o2_maxY_0 Int )
(declare-var compare@%o1_maxZ_0 Int )
(declare-var compare@%UnifiedRetVal_0 Int )
(declare-var compare@_call_0 Bool )
(declare-var compare@_5_0 Bool )
(declare-var compare@_9_0 Bool )
(declare-var compare@_13_0 Bool )
(declare-var compare@_17_0 Bool )
(declare-var compare@_21_0 Bool )
(declare-var compare@_25_0 Bool )
(declare-var compare@_29_0 Bool )
(declare-var compare@_33_0 Bool )
(declare-var compare@_37_0 Bool )
(declare-var compare@_.0_0 Bool )
(declare-var |tuple(compare@_33_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_29_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_25_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_21_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_17_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_13_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_9_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_5_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_call_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_0 Int )
(declare-var compare@%.0_1 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@%.0_3 Int )
(declare-var compare@%.0_4 Int )
(declare-var compare@%.0_5 Int )
(declare-var compare@%.0_6 Int )
(declare-var compare@%.0_7 Int )
(declare-var compare@%.0_8 Int )
(declare-var compare@UnifiedReturnBlock_0 Bool )
(declare-var compare@%UnifiedRetVal_1 Int )
(declare-var compare@%UnifiedRetVal_3 Int )
(declare-var compare@UnifiedReturnBlock.split_0 Bool )
(declare-var main@%_2_0 Int )
(declare-var main@%_3_0 Int )
(declare-var main@%_4_0 Int )
(declare-var main@%_5_0 Int )
(declare-var main@%_6_0 Int )
(declare-var main@%_7_0 Int )
(declare-var main@%_8_0 Int )
(declare-var main@%_9_0 Int )
(declare-var main@%_10_0 Int )
(declare-var main@%_11_0 Int )
(declare-var main@%_12_0 Int )
(declare-var main@%_13_0 Int )
(declare-var main@%_br_0 Int )
(declare-var main@_call_0 Bool )
(declare-var main@.split_0 Bool )
(rule (verifier.error false false false))
(rule (verifier.error false true true))
(rule (verifier.error true false true))
(rule (verifier.error true true true))
(rule (compare true
         true
         true
         compare@%o1_minX_0
         compare@%o2_minX_0
         compare@%o1_minY_0
         compare@%o2_minY_0
         compare@%o1_minZ_0
         compare@%o2_minZ_0
         compare@%o1_maxX_0
         compare@%o2_maxX_0
         compare@%o1_maxY_0
         compare@%o2_maxY_0
         compare@%o1_maxZ_0
         compare@%o2_maxZ_0
         compare@%UnifiedRetVal_0))
(rule (compare false
         true
         true
         compare@%o1_minX_0
         compare@%o2_minX_0
         compare@%o1_minY_0
         compare@%o2_minY_0
         compare@%o1_minZ_0
         compare@%o2_minZ_0
         compare@%o1_maxX_0
         compare@%o2_maxX_0
         compare@%o1_maxY_0
         compare@%o2_maxY_0
         compare@%o1_maxZ_0
         compare@%o2_maxZ_0
         compare@%UnifiedRetVal_0))
(rule (compare false
         false
         false
         compare@%o1_minX_0
         compare@%o2_minX_0
         compare@%o1_minY_0
         compare@%o2_minY_0
         compare@%o1_minZ_0
         compare@%o2_minZ_0
         compare@%o1_maxX_0
         compare@%o2_maxX_0
         compare@%o1_maxY_0
         compare@%o2_maxY_0
         compare@%o1_maxZ_0
         compare@%o2_maxZ_0
         compare@%UnifiedRetVal_0))
(rule (compare_1 0
           compare@%UnifiedRetVal_0
           compare@%o1_minX_0
           compare@%o2_minX_0
           compare@%o1_minY_0
           compare@%o2_minY_0
           compare@%o1_minZ_0
           compare@%o2_minZ_0
           compare@%o1_maxX_0
           compare@%o2_maxX_0
           compare@%o1_maxY_0
           compare@%o2_maxY_0
           compare@%o1_maxZ_0
           compare@%o2_maxZ_0))
(rule (let ((a!1 (and (and (> compare@%o2_maxX_0 compare@%o1_minX_0)
                     (> compare@%o2_maxY_0 compare@%o1_minY_0))
                (< compare@%o2_minZ_0 compare@%o1_maxZ_0)))
      (a!2 (and (and (> compare@%o2_maxX_0 compare@%o1_minX_0)
                     (> compare@%o2_maxY_0 compare@%o1_minY_0))
                (> compare@%o2_minZ_0 compare@%o1_maxZ_0)))
      (a!3 (and (and (< compare@%o2_maxX_0 compare@%o1_minX_0)
                     (> compare@%o2_maxY_0 compare@%o1_minY_0))
                (> compare@%o2_minZ_0 compare@%o1_maxZ_0)))
      (a!4 (and (< compare@%o2_maxX_0 compare@%o1_minX_0)
                (< compare@%o2_maxY_0 compare@%o1_minY_0)
                (> compare@%o2_minZ_0 compare@%o1_maxZ_0)))
      (a!5 (and (and (< compare@%o2_maxX_0 compare@%o1_minX_0)
                     (> compare@%o2_maxY_0 compare@%o1_minY_0))
                (< compare@%o2_minZ_0 compare@%o1_maxZ_0)))
      (a!6 (and (and (> compare@%o2_maxX_0 compare@%o1_minX_0)
                     (< compare@%o2_maxY_0 compare@%o1_minY_0))
                (> compare@%o2_minZ_0 compare@%o1_maxZ_0)))
      (a!7 (and (and (> compare@%o2_maxX_0 compare@%o1_minX_0)
                     (< compare@%o2_maxY_0 compare@%o1_minY_0))
                (< compare@%o2_minZ_0 compare@%o1_maxZ_0)))
      (a!8 (ite (xor (and (= compare@%o1_minX_0 compare@%o2_minX_0)
                          (= compare@%o1_minY_0 compare@%o2_minY_0)
                          (= compare@%o1_minZ_0 compare@%o2_minZ_0)
                          (= compare@%o1_maxX_0 compare@%o2_maxX_0)
                          (= compare@%o1_maxY_0 compare@%o2_maxY_0)
                          (= compare@%o1_maxZ_0 compare@%o2_maxZ_0))
                     true)
                1
                0)))
(let ((a!9 (and (compare_1 0
                           compare@%UnifiedRetVal_0
                           compare@%o1_minX_0
                           compare@%o2_minX_0
                           compare@%o1_minY_0
                           compare@%o2_minY_0
                           compare@%o1_minZ_0
                           compare@%o2_minZ_0
                           compare@%o1_maxX_0
                           compare@%o2_maxX_0
                           compare@%o1_maxY_0
                           compare@%o2_maxY_0
                           compare@%o1_maxZ_0
                           compare@%o2_maxZ_0)
                true
                (=> compare@_5_0 (and compare@_5_0 compare@_call_0))
                (=> (and compare@_5_0 compare@_call_0) (not a!1))
                (=> compare@_9_0 (and compare@_9_0 compare@_5_0))
                (=> (and compare@_9_0 compare@_5_0) (not a!2))
                (=> compare@_13_0 (and compare@_13_0 compare@_9_0))
                (=> (and compare@_13_0 compare@_9_0) (not a!3))
                (=> compare@_17_0 (and compare@_17_0 compare@_13_0))
                (=> (and compare@_17_0 compare@_13_0) (not a!4))
                (=> compare@_21_0 (and compare@_21_0 compare@_17_0))
                (=> (and compare@_21_0 compare@_17_0) (not a!5))
                (=> compare@_25_0 (and compare@_25_0 compare@_21_0))
                (=> (and compare@_25_0 compare@_21_0) (not a!6))
                (=> compare@_29_0 (and compare@_29_0 compare@_25_0))
                (=> (and compare@_29_0 compare@_25_0) (not a!4))
                (=> compare@_33_0 (and compare@_33_0 compare@_29_0))
                (=> (and compare@_33_0 compare@_29_0) (not a!7))
                (=> compare@_37_0 (and compare@_37_0 compare@_33_0))
                (=> (and compare@_37_0 compare@_33_0) (not a!5))
                (=> |tuple(compare@_33_0, compare@_.0_0)| compare@_33_0)
                (=> |tuple(compare@_29_0, compare@_.0_0)| compare@_29_0)
                (=> |tuple(compare@_25_0, compare@_.0_0)| compare@_25_0)
                (=> |tuple(compare@_21_0, compare@_.0_0)| compare@_21_0)
                (=> |tuple(compare@_17_0, compare@_.0_0)| compare@_17_0)
                (=> |tuple(compare@_13_0, compare@_.0_0)| compare@_13_0)
                (=> |tuple(compare@_9_0, compare@_.0_0)| compare@_9_0)
                (=> |tuple(compare@_5_0, compare@_.0_0)| compare@_5_0)
                (=> |tuple(compare@_call_0, compare@_.0_0)| compare@_call_0)
                (=> compare@_.0_0
                    (or (and compare@_33_0
                             |tuple(compare@_33_0, compare@_.0_0)|)
                        (and compare@_29_0
                             |tuple(compare@_29_0, compare@_.0_0)|)
                        (and compare@_25_0
                             |tuple(compare@_25_0, compare@_.0_0)|)
                        (and compare@_21_0
                             |tuple(compare@_21_0, compare@_.0_0)|)
                        (and compare@_17_0
                             |tuple(compare@_17_0, compare@_.0_0)|)
                        (and compare@_13_0
                             |tuple(compare@_13_0, compare@_.0_0)|)
                        (and compare@_9_0 |tuple(compare@_9_0, compare@_.0_0)|)
                        (and compare@_5_0 |tuple(compare@_5_0, compare@_.0_0)|)
                        (and compare@_call_0
                             |tuple(compare@_call_0, compare@_.0_0)|)))
                (=> (and compare@_33_0 |tuple(compare@_33_0, compare@_.0_0)|)
                    a!5)
                (= compare@%.0_0 1)
                (=> (and compare@_29_0 |tuple(compare@_29_0, compare@_.0_0)|)
                    a!7)
                (= compare@%.0_1 1)
                (=> (and compare@_25_0 |tuple(compare@_25_0, compare@_.0_0)|)
                    a!4)
                (= compare@%.0_2 1)
                (=> (and compare@_21_0 |tuple(compare@_21_0, compare@_.0_0)|)
                    a!6)
                (= compare@%.0_3 1)
                (=> (and compare@_17_0 |tuple(compare@_17_0, compare@_.0_0)|)
                    a!5)
                (= compare@%.0_4 1)
                (=> (and compare@_13_0 |tuple(compare@_13_0, compare@_.0_0)|)
                    a!4)
                (= compare@%.0_5 1)
                (=> (and compare@_9_0 |tuple(compare@_9_0, compare@_.0_0)|) a!3)
                (= compare@%.0_6 1)
                (=> (and compare@_5_0 |tuple(compare@_5_0, compare@_.0_0)|) a!2)
                (= compare@%.0_7 1)
                (=> (and compare@_call_0
                         |tuple(compare@_call_0, compare@_.0_0)|)
                    a!1)
                (= compare@%.0_8 (- 1))
                (=> (and compare@_33_0 |tuple(compare@_33_0, compare@_.0_0)|)
                    (= compare@%.0_9 compare@%.0_0))
                (=> (and compare@_29_0 |tuple(compare@_29_0, compare@_.0_0)|)
                    (= compare@%.0_9 compare@%.0_1))
                (=> (and compare@_25_0 |tuple(compare@_25_0, compare@_.0_0)|)
                    (= compare@%.0_9 compare@%.0_2))
                (=> (and compare@_21_0 |tuple(compare@_21_0, compare@_.0_0)|)
                    (= compare@%.0_9 compare@%.0_3))
                (=> (and compare@_17_0 |tuple(compare@_17_0, compare@_.0_0)|)
                    (= compare@%.0_9 compare@%.0_4))
                (=> (and compare@_13_0 |tuple(compare@_13_0, compare@_.0_0)|)
                    (= compare@%.0_9 compare@%.0_5))
                (=> (and compare@_9_0 |tuple(compare@_9_0, compare@_.0_0)|)
                    (= compare@%.0_9 compare@%.0_6))
                (=> (and compare@_5_0 |tuple(compare@_5_0, compare@_.0_0)|)
                    (= compare@%.0_9 compare@%.0_7))
                (=> (and compare@_call_0
                         |tuple(compare@_call_0, compare@_.0_0)|)
                    (= compare@%.0_9 compare@%.0_8))
                (=> compare@UnifiedReturnBlock_0
                    (or (and compare@UnifiedReturnBlock_0 compare@_.0_0)
                        (and compare@UnifiedReturnBlock_0 compare@_37_0)))
                (= compare@%UnifiedRetVal_1 compare@%.0_9)
                (= compare@%UnifiedRetVal_2 a!8)
                (=> (and compare@UnifiedReturnBlock_0 compare@_.0_0)
                    (= compare@%UnifiedRetVal_3 compare@%UnifiedRetVal_1))
                (=> (and compare@UnifiedReturnBlock_0 compare@_37_0)
                    (= compare@%UnifiedRetVal_3 compare@%UnifiedRetVal_2))
                (=> compare@UnifiedReturnBlock.split_0
                    (and compare@UnifiedReturnBlock.split_0
                         compare@UnifiedReturnBlock_0))
                compare@UnifiedReturnBlock.split_0)))
  (=> a!9
      (compare_1 1
                 compare@%UnifiedRetVal_3
                 compare@%o1_minX_0
                 compare@%o2_minX_0
                 compare@%o1_minY_0
                 compare@%o2_minY_0
                 compare@%o1_minZ_0
                 compare@%o2_minZ_0
                 compare@%o1_maxX_0
                 compare@%o2_maxX_0
                 compare@%o1_maxY_0
                 compare@%o2_maxY_0
                 compare@%o1_maxZ_0
                 compare@%o2_maxZ_0)))))
(rule (=> (compare_1 1
               compare@%UnifiedRetVal_0
               compare@%o1_minX_0
               compare@%o2_minX_0
               compare@%o1_minY_0
               compare@%o2_minY_0
               compare@%o1_minZ_0
               compare@%o2_minZ_0
               compare@%o1_maxX_0
               compare@%o2_maxX_0
               compare@%o1_maxY_0
               compare@%o2_maxY_0
               compare@%o1_maxZ_0
               compare@%o2_maxZ_0)
    (compare true
             false
             false
             compare@%o1_minX_0
             compare@%o2_minX_0
             compare@%o1_minY_0
             compare@%o2_minY_0
             compare@%o1_minZ_0
             compare@%o2_minZ_0
             compare@%o1_maxX_0
             compare@%o2_maxX_0
             compare@%o1_maxY_0
             compare@%o2_maxY_0
             compare@%o1_maxZ_0
             compare@%o2_maxZ_0
             compare@%UnifiedRetVal_0)))
(rule (main_1 0))
(rule (=> (and (main_1 0)
         true
         (compare true
                  false
                  false
                  main@%_2_0
                  main@%_3_0
                  main@%_4_0
                  main@%_5_0
                  main@%_6_0
                  main@%_7_0
                  main@%_8_0
                  main@%_9_0
                  main@%_10_0
                  main@%_11_0
                  main@%_12_0
                  main@%_13_0
                  main@%_br_0)
         (=> main@.split_0 (and main@.split_0 main@_call_0))
         main@.split_0)
    (main_1 1)))
