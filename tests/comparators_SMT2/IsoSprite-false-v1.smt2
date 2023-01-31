(set-info :original "IsoSprite-false-v1.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool Int Int Int Int Int Int Int ))
(declare-rel compare_1 (Int Int Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%UnifiedRetVal_2 Int )
(declare-var compare@%o1_minX_0 Int )
(declare-var compare@%o1_minY_0 Int )
(declare-var compare@%o2_minZ_0 Int )
(declare-var compare@%o2_maxX_0 Int )
(declare-var compare@%o2_maxY_0 Int )
(declare-var compare@%o1_maxZ_0 Int )
(declare-var compare@%UnifiedRetVal_0 Int )
(declare-var compare@_call_0 Bool )
(declare-var compare@_5_0 Bool )
(declare-var compare@_br_0 Bool )
(declare-var compare@UnifiedReturnBlock_0 Bool )
(declare-var compare@%UnifiedRetVal_1 Int )
(declare-var compare@%UnifiedRetVal_3 Int )
(declare-var compare@UnifiedReturnBlock.split_0 Bool )
(declare-var main@%_2_0 Int )
(declare-var main@%_4_0 Int )
(declare-var main@%_7_0 Int )
(declare-var main@%_9_0 Int )
(declare-var main@%_11_0 Int )
(declare-var main@%_12_0 Int )
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
         compare@%o1_minY_0
         compare@%o2_minZ_0
         compare@%o2_maxX_0
         compare@%o2_maxY_0
         compare@%o1_maxZ_0
         compare@%UnifiedRetVal_0))
(rule (compare false
         true
         true
         compare@%o1_minX_0
         compare@%o1_minY_0
         compare@%o2_minZ_0
         compare@%o2_maxX_0
         compare@%o2_maxY_0
         compare@%o1_maxZ_0
         compare@%UnifiedRetVal_0))
(rule (compare false
         false
         false
         compare@%o1_minX_0
         compare@%o1_minY_0
         compare@%o2_minZ_0
         compare@%o2_maxX_0
         compare@%o2_maxY_0
         compare@%o1_maxZ_0
         compare@%UnifiedRetVal_0))
(rule (compare_1 0
           compare@%UnifiedRetVal_0
           compare@%o2_maxX_0
           compare@%o1_minX_0
           compare@%o2_maxY_0
           compare@%o1_minY_0
           compare@%o2_minZ_0
           compare@%o1_maxZ_0))
(rule (let ((a!1 (and (> compare@%o2_maxX_0 compare@%o1_minX_0)
                (> compare@%o2_maxY_0 compare@%o1_minY_0)
                (< compare@%o2_minZ_0 compare@%o1_maxZ_0)))
      (a!2 (= compare@%UnifiedRetVal_2
              (ite (and (< compare@%o2_maxX_0 compare@%o1_minX_0)
                        (< compare@%o2_maxY_0 compare@%o1_minY_0)
                        (> compare@%o2_minZ_0 compare@%o1_maxZ_0))
                   1
                   0))))
(let ((a!3 (and (compare_1 0
                           compare@%UnifiedRetVal_0
                           compare@%o2_maxX_0
                           compare@%o1_minX_0
                           compare@%o2_maxY_0
                           compare@%o1_minY_0
                           compare@%o2_minZ_0
                           compare@%o1_maxZ_0)
                true
                (=> compare@_5_0 (and compare@_5_0 compare@_call_0))
                (=> (and compare@_5_0 compare@_call_0) (not a!1))
                (=> compare@_br_0 (and compare@_br_0 compare@_call_0))
                (=> (and compare@_br_0 compare@_call_0) a!1)
                (=> compare@UnifiedReturnBlock_0
                    (or (and compare@UnifiedReturnBlock_0 compare@_br_0)
                        (and compare@UnifiedReturnBlock_0 compare@_5_0)))
                (= compare@%UnifiedRetVal_1 (- 1))
                a!2
                (=> (and compare@UnifiedReturnBlock_0 compare@_br_0)
                    (= compare@%UnifiedRetVal_3 compare@%UnifiedRetVal_1))
                (=> (and compare@UnifiedReturnBlock_0 compare@_5_0)
                    (= compare@%UnifiedRetVal_3 compare@%UnifiedRetVal_2))
                (=> compare@UnifiedReturnBlock.split_0
                    (and compare@UnifiedReturnBlock.split_0
                         compare@UnifiedReturnBlock_0))
                compare@UnifiedReturnBlock.split_0)))
  (=> a!3
      (compare_1 1
                 compare@%UnifiedRetVal_3
                 compare@%o2_maxX_0
                 compare@%o1_minX_0
                 compare@%o2_maxY_0
                 compare@%o1_minY_0
                 compare@%o2_minZ_0
                 compare@%o1_maxZ_0)))))
(rule (=> (compare_1 1
               compare@%UnifiedRetVal_0
               compare@%o2_maxX_0
               compare@%o1_minX_0
               compare@%o2_maxY_0
               compare@%o1_minY_0
               compare@%o2_minZ_0
               compare@%o1_maxZ_0)
    (compare true
             false
             false
             compare@%o1_minX_0
             compare@%o1_minY_0
             compare@%o2_minZ_0
             compare@%o2_maxX_0
             compare@%o2_maxY_0
             compare@%o1_maxZ_0
             compare@%UnifiedRetVal_0)))
(rule (main_1 0))
(rule (=> (and (main_1 0)
         true
         (compare true
                  false
                  false
                  main@%_2_0
                  main@%_4_0
                  main@%_7_0
                  main@%_9_0
                  main@%_11_0
                  main@%_12_0
                  main@%_br_0)
         (=> main@.split_0 (and main@.split_0 main@_call_0))
         main@.split_0)
    (main_1 1)))
