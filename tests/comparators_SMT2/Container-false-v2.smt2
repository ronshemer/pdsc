(set-info :original "Container-false-v2.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool Int Int Int Int Int Int Int Int Int ))
(declare-rel compare_1 (Int Int Int Int Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%o1_departureMaxDuration_0 Int )
(declare-var compare@%o2_departureMaxDuration_0 Int )
(declare-var compare@%o1_departureTransportType_0 Int )
(declare-var compare@%o2_departureTransportType_0 Int )
(declare-var compare@%o1_departureTransportCompany_0 Int )
(declare-var compare@%o2_departureTransportCompany_0 Int )
(declare-var compare@%UnifiedRetVal_2 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@%o1_departureTime_0 Int )
(declare-var compare@%o2_departureTime_0 Int )
(declare-var compare@%UnifiedRetVal_0 Int )
(declare-var compare@_call_0 Bool )
(declare-var compare@_3_0 Bool )
(declare-var compare@_5_0 Bool )
(declare-var compare@_.0_0 Bool )
(declare-var |tuple(compare@_3_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_call_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_0 Int )
(declare-var compare@%.0_1 Int )
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
         compare@%o1_departureTime_0
         compare@%o2_departureTime_0
         compare@%o1_departureTransportType_0
         compare@%o2_departureTransportType_0
         compare@%o1_departureMaxDuration_0
         compare@%o2_departureMaxDuration_0
         compare@%o1_departureTransportCompany_0
         compare@%o2_departureTransportCompany_0
         compare@%UnifiedRetVal_0))
(rule (compare false
         true
         true
         compare@%o1_departureTime_0
         compare@%o2_departureTime_0
         compare@%o1_departureTransportType_0
         compare@%o2_departureTransportType_0
         compare@%o1_departureMaxDuration_0
         compare@%o2_departureMaxDuration_0
         compare@%o1_departureTransportCompany_0
         compare@%o2_departureTransportCompany_0
         compare@%UnifiedRetVal_0))
(rule (compare false
         false
         false
         compare@%o1_departureTime_0
         compare@%o2_departureTime_0
         compare@%o1_departureTransportType_0
         compare@%o2_departureTransportType_0
         compare@%o1_departureMaxDuration_0
         compare@%o2_departureMaxDuration_0
         compare@%o1_departureTransportCompany_0
         compare@%o2_departureTransportCompany_0
         compare@%UnifiedRetVal_0))
(rule (compare_1 0
           compare@%UnifiedRetVal_0
           compare@%o1_departureMaxDuration_0
           compare@%o2_departureMaxDuration_0
           compare@%o1_departureTransportType_0
           compare@%o2_departureTransportType_0
           compare@%o1_departureTransportCompany_0
           compare@%o2_departureTransportCompany_0
           compare@%o1_departureTime_0
           compare@%o2_departureTime_0))
(rule (let ((a!1 (ite (xor (and (= compare@%o1_departureMaxDuration_0
                             compare@%o2_departureMaxDuration_0)
                          (= compare@%o1_departureTransportType_0
                             compare@%o2_departureTransportType_0)
                          (= compare@%o1_departureTransportCompany_0
                             compare@%o2_departureTransportCompany_0))
                     true)
                1
                0)))
(let ((a!2 (and (compare_1 0
                           compare@%UnifiedRetVal_0
                           compare@%o1_departureMaxDuration_0
                           compare@%o2_departureMaxDuration_0
                           compare@%o1_departureTransportType_0
                           compare@%o2_departureTransportType_0
                           compare@%o1_departureTransportCompany_0
                           compare@%o2_departureTransportCompany_0
                           compare@%o1_departureTime_0
                           compare@%o2_departureTime_0)
                true
                (=> compare@_3_0 (and compare@_3_0 compare@_call_0))
                (=> (and compare@_3_0 compare@_call_0)
                    (not (< compare@%o1_departureTime_0
                            compare@%o2_departureTime_0)))
                (=> compare@_5_0 (and compare@_5_0 compare@_3_0))
                (=> (and compare@_5_0 compare@_3_0)
                    (not (< compare@%o1_departureTime_0
                            compare@%o2_departureTime_0)))
                (=> |tuple(compare@_3_0, compare@_.0_0)| compare@_3_0)
                (=> |tuple(compare@_call_0, compare@_.0_0)| compare@_call_0)
                (=> compare@_.0_0
                    (or (and compare@_3_0 |tuple(compare@_3_0, compare@_.0_0)|)
                        (and compare@_call_0
                             |tuple(compare@_call_0, compare@_.0_0)|)))
                (=> (and compare@_3_0 |tuple(compare@_3_0, compare@_.0_0)|)
                    (< compare@%o1_departureTime_0 compare@%o2_departureTime_0))
                (= compare@%.0_0 1)
                (=> (and compare@_call_0
                         |tuple(compare@_call_0, compare@_.0_0)|)
                    (< compare@%o1_departureTime_0 compare@%o2_departureTime_0))
                (= compare@%.0_1 (- 1))
                (=> (and compare@_3_0 |tuple(compare@_3_0, compare@_.0_0)|)
                    (= compare@%.0_2 compare@%.0_0))
                (=> (and compare@_call_0
                         |tuple(compare@_call_0, compare@_.0_0)|)
                    (= compare@%.0_2 compare@%.0_1))
                (=> compare@UnifiedReturnBlock_0
                    (or (and compare@UnifiedReturnBlock_0 compare@_.0_0)
                        (and compare@UnifiedReturnBlock_0 compare@_5_0)))
                (= compare@%UnifiedRetVal_1 compare@%.0_2)
                (= compare@%UnifiedRetVal_2 a!1)
                (=> (and compare@UnifiedReturnBlock_0 compare@_.0_0)
                    (= compare@%UnifiedRetVal_3 compare@%UnifiedRetVal_1))
                (=> (and compare@UnifiedReturnBlock_0 compare@_5_0)
                    (= compare@%UnifiedRetVal_3 compare@%UnifiedRetVal_2))
                (=> compare@UnifiedReturnBlock.split_0
                    (and compare@UnifiedReturnBlock.split_0
                         compare@UnifiedReturnBlock_0))
                compare@UnifiedReturnBlock.split_0)))
  (=> a!2
      (compare_1 1
                 compare@%UnifiedRetVal_3
                 compare@%o1_departureMaxDuration_0
                 compare@%o2_departureMaxDuration_0
                 compare@%o1_departureTransportType_0
                 compare@%o2_departureTransportType_0
                 compare@%o1_departureTransportCompany_0
                 compare@%o2_departureTransportCompany_0
                 compare@%o1_departureTime_0
                 compare@%o2_departureTime_0)))))
(rule (=> (compare_1 1
               compare@%UnifiedRetVal_0
               compare@%o1_departureMaxDuration_0
               compare@%o2_departureMaxDuration_0
               compare@%o1_departureTransportType_0
               compare@%o2_departureTransportType_0
               compare@%o1_departureTransportCompany_0
               compare@%o2_departureTransportCompany_0
               compare@%o1_departureTime_0
               compare@%o2_departureTime_0)
    (compare true
             false
             false
             compare@%o1_departureTime_0
             compare@%o2_departureTime_0
             compare@%o1_departureTransportType_0
             compare@%o2_departureTransportType_0
             compare@%o1_departureMaxDuration_0
             compare@%o2_departureMaxDuration_0
             compare@%o1_departureTransportCompany_0
             compare@%o2_departureTransportCompany_0
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
                  main@%_br_0)
         (=> main@.split_0 (and main@.split_0 main@_call_0))
         main@.split_0)
    (main_1 1)))
