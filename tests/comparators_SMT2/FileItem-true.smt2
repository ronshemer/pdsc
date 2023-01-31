(set-info :original "FileItem-true.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool Int Int Int Int Int ))
(declare-rel compare_1 (Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%UnifiedRetVal_2 Int )
(declare-var compare@%.0_3 Int )
(declare-var compare@%o1_toInt_0 Int )
(declare-var compare@%o2_toInt_0 Int )
(declare-var compare@%o1_getFileName_0 Int )
(declare-var compare@%o2_getFileName_0 Int )
(declare-var compare@%UnifiedRetVal_0 Int )
(declare-var compare@_call_0 Bool )
(declare-var compare@_br1_0 Bool )
(declare-var compare@_call2_0 Bool )
(declare-var compare@_10_0 Bool )
(declare-var compare@%.2_0 Int )
(declare-var compare@_not._0 Bool )
(declare-var compare@_not.3_0 Bool )
(declare-var compare@_.0_0 Bool )
(declare-var |tuple(compare@_br1_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_0 Int )
(declare-var compare@%.0_1 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@UnifiedReturnBlock_0 Bool )
(declare-var compare@%UnifiedRetVal_1 Int )
(declare-var compare@%UnifiedRetVal_3 Int )
(declare-var compare@UnifiedReturnBlock.split_0 Bool )
(declare-var main@%_2_0 Int )
(declare-var main@%_3_0 Int )
(declare-var main@%_4_0 Int )
(declare-var main@%_5_0 Int )
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
         compare@%o1_getFileName_0
         compare@%o2_getFileName_0
         compare@%o1_toInt_0
         compare@%o2_toInt_0
         compare@%UnifiedRetVal_0))
(rule (compare false
         true
         true
         compare@%o1_getFileName_0
         compare@%o2_getFileName_0
         compare@%o1_toInt_0
         compare@%o2_toInt_0
         compare@%UnifiedRetVal_0))
(rule (compare false
         false
         false
         compare@%o1_getFileName_0
         compare@%o2_getFileName_0
         compare@%o1_toInt_0
         compare@%o2_toInt_0
         compare@%UnifiedRetVal_0))
(rule (compare_1 0
           compare@%UnifiedRetVal_0
           compare@%o1_getFileName_0
           compare@%o2_getFileName_0
           compare@%o1_toInt_0
           compare@%o2_toInt_0))
(rule (let ((a!1 (= compare@%.0_0
              (ite (xor (= compare@%o2_getFileName_0 0) true) 1 0)))
      (a!2 (= compare@%.0_2 (ite (xor (= compare@%o2_toInt_0 0) true) 1 0))))
(let ((a!3 (and (compare_1 0
                           compare@%UnifiedRetVal_0
                           compare@%o1_getFileName_0
                           compare@%o2_getFileName_0
                           compare@%o1_toInt_0
                           compare@%o2_toInt_0)
                true
                (=> compare@_br1_0 (and compare@_br1_0 compare@_call_0))
                (=> (and compare@_br1_0 compare@_call_0)
                    (not (= compare@%o1_toInt_0 0)))
                (=> compare@_call2_0 (and compare@_call2_0 compare@_br1_0))
                (=> (and compare@_call2_0 compare@_br1_0)
                    (not (= compare@%o2_toInt_0 0)))
                (=> compare@_10_0 (and compare@_10_0 compare@_call2_0))
                (=> (and compare@_10_0 compare@_call2_0)
                    (not (= compare@%o1_getFileName_0 0)))
                (= compare@%.2_0
                   (ite (= compare@%o2_getFileName_0 0)
                        (- 1)
                        (- compare@%o1_getFileName_0 compare@%o2_getFileName_0)))
                (=> compare@_not._0 (and compare@_not._0 compare@_call2_0))
                (=> (and compare@_not._0 compare@_call2_0)
                    (= compare@%o1_getFileName_0 0))
                (=> compare@_not.3_0 (and compare@_not.3_0 compare@_call_0))
                (=> (and compare@_not.3_0 compare@_call_0)
                    (= compare@%o1_toInt_0 0))
                (=> |tuple(compare@_br1_0, compare@_.0_0)| compare@_br1_0)
                (=> compare@_.0_0
                    (or (and compare@_.0_0 compare@_not._0)
                        (and compare@_br1_0
                             |tuple(compare@_br1_0, compare@_.0_0)|)
                        (and compare@_.0_0 compare@_not.3_0)))
                a!1
                (=> (and compare@_br1_0 |tuple(compare@_br1_0, compare@_.0_0)|)
                    (= compare@%o2_toInt_0 0))
                (= compare@%.0_1 (- 1))
                a!2
                (=> (and compare@_.0_0 compare@_not._0)
                    (= compare@%.0_3 compare@%.0_0))
                (=> (and compare@_br1_0 |tuple(compare@_br1_0, compare@_.0_0)|)
                    (= compare@%.0_3 compare@%.0_1))
                (=> (and compare@_.0_0 compare@_not.3_0)
                    (= compare@%.0_3 compare@%.0_2))
                (=> compare@UnifiedReturnBlock_0
                    (or (and compare@UnifiedReturnBlock_0 compare@_.0_0)
                        (and compare@UnifiedReturnBlock_0 compare@_10_0)))
                (= compare@%UnifiedRetVal_1 compare@%.0_3)
                (= compare@%UnifiedRetVal_2 compare@%.2_0)
                (=> (and compare@UnifiedReturnBlock_0 compare@_.0_0)
                    (= compare@%UnifiedRetVal_3 compare@%UnifiedRetVal_1))
                (=> (and compare@UnifiedReturnBlock_0 compare@_10_0)
                    (= compare@%UnifiedRetVal_3 compare@%UnifiedRetVal_2))
                (=> compare@UnifiedReturnBlock.split_0
                    (and compare@UnifiedReturnBlock.split_0
                         compare@UnifiedReturnBlock_0))
                compare@UnifiedReturnBlock.split_0)))
  (=> a!3
      (compare_1 1
                 compare@%UnifiedRetVal_3
                 compare@%o1_getFileName_0
                 compare@%o2_getFileName_0
                 compare@%o1_toInt_0
                 compare@%o2_toInt_0)))))
(rule (=> (compare_1 1
               compare@%UnifiedRetVal_0
               compare@%o1_getFileName_0
               compare@%o2_getFileName_0
               compare@%o1_toInt_0
               compare@%o2_toInt_0)
    (compare true
             false
             false
             compare@%o1_getFileName_0
             compare@%o2_getFileName_0
             compare@%o1_toInt_0
             compare@%o2_toInt_0
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
                  main@%_br_0)
         (=> main@.split_0 (and main@.split_0 main@_call_0))
         main@.split_0)
    (main_1 1)))
