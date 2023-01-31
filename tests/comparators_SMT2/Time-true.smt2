(set-info :original "Time-true.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool Int Int Int Int Int ))
(declare-rel compare_1 (Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%o1_ora_0 Int )
(declare-var compare@%o2_ora_0 Int )
(declare-var compare@%o1_volume_totale_0 Int )
(declare-var compare@%o2_volume_totale_0 Int )
(declare-var compare@%._1 Int )
(declare-var compare@%._0 Int )
(declare-var compare@_call_0 Bool )
(declare-var compare@.split_0 Bool )
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
         compare@%o1_ora_0
         compare@%o2_ora_0
         compare@%o1_volume_totale_0
         compare@%o2_volume_totale_0
         compare@%._0))
(rule (compare false
         true
         true
         compare@%o1_ora_0
         compare@%o2_ora_0
         compare@%o1_volume_totale_0
         compare@%o2_volume_totale_0
         compare@%._0))
(rule (compare false
         false
         false
         compare@%o1_ora_0
         compare@%o2_ora_0
         compare@%o1_volume_totale_0
         compare@%o2_volume_totale_0
         compare@%._0))
(rule (compare_1 0
           compare@%._0
           compare@%o1_ora_0
           compare@%o2_ora_0
           compare@%o1_volume_totale_0
           compare@%o2_volume_totale_0))
(rule (let ((a!1 (and (compare_1 0
                           compare@%._0
                           compare@%o1_ora_0
                           compare@%o2_ora_0
                           compare@%o1_volume_totale_0
                           compare@%o2_volume_totale_0)
                true
                (= compare@%._1
                   (ite (= compare@%o1_ora_0 compare@%o2_ora_0)
                        (- compare@%o1_volume_totale_0
                           compare@%o2_volume_totale_0)
                        (- compare@%o1_ora_0 compare@%o2_ora_0)))
                (=> compare@.split_0 (and compare@.split_0 compare@_call_0))
                compare@.split_0)))
  (=> a!1
      (compare_1 1
                 compare@%._1
                 compare@%o1_ora_0
                 compare@%o2_ora_0
                 compare@%o1_volume_totale_0
                 compare@%o2_volume_totale_0))))
(rule (=> (compare_1 1
               compare@%._0
               compare@%o1_ora_0
               compare@%o2_ora_0
               compare@%o1_volume_totale_0
               compare@%o2_volume_totale_0)
    (compare true
             false
             false
             compare@%o1_ora_0
             compare@%o2_ora_0
             compare@%o1_volume_totale_0
             compare@%o2_volume_totale_0
             compare@%._0)))
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
