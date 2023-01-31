(set-info :original "TextPosition-true.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int ))
(declare-rel compare_1 (Int Int Int Int Int Int Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%_call16_0 Int )
(declare-var compare@%_call12_0 Int )
(declare-var compare@%_call8_0 Int )
(declare-var compare@%_call4_0 Int )
(declare-var compare@%.0_7 Int )
(declare-var compare@%o1_getDir_0 Int )
(declare-var compare@%o2_getDir_0 Int )
(declare-var compare@%o1_getXDirAdj_0 Int )
(declare-var compare@%o2_getXDirAdj_0 Int )
(declare-var compare@%o1_getYDirAdj_0 Int )
(declare-var compare@%o2_getYDirAdj_0 Int )
(declare-var compare@%o1_getHeightDir_0 Int )
(declare-var compare@%o2_getHeightDir_0 Int )
(declare-var compare@%o1_getWidthDirAdj_0 Int )
(declare-var compare@%o2_getWidthDirAdj_0 Int )
(declare-var compare@%.0_0 Int )
(declare-var compare@_call_0 Bool )
(declare-var compare@_3_0 Bool )
(declare-var compare@_call2_0 Bool )
(declare-var compare@_38_0 Bool )
(declare-var compare@%_call21_0 Int )
(declare-var compare@_call6_0 Bool )
(declare-var compare@_35_0 Bool )
(declare-var compare@%_call20_0 Int )
(declare-var compare@_call10_0 Bool )
(declare-var compare@_32_0 Bool )
(declare-var compare@%_call19_0 Int )
(declare-var compare@_call14_0 Bool )
(declare-var compare@_29_0 Bool )
(declare-var compare@%_call18_0 Int )
(declare-var compare@_.0_0 Bool )
(declare-var |tuple(compare@_call14_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_3_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_call_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_1 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@%.0_3 Int )
(declare-var compare@%.0_4 Int )
(declare-var compare@%.0_5 Int )
(declare-var compare@%.0_6 Int )
(declare-var compare@%.0_8 Int )
(declare-var compare@.split_0 Bool )
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
         compare@%o1_getDir_0
         compare@%o2_getDir_0
         compare@%o1_getXDirAdj_0
         compare@%o2_getXDirAdj_0
         compare@%o1_getYDirAdj_0
         compare@%o2_getYDirAdj_0
         compare@%o1_getHeightDir_0
         compare@%o2_getHeightDir_0
         compare@%o1_getWidthDirAdj_0
         compare@%o2_getWidthDirAdj_0
         compare@%.0_0))
(rule (compare false
         true
         true
         compare@%o1_getDir_0
         compare@%o2_getDir_0
         compare@%o1_getXDirAdj_0
         compare@%o2_getXDirAdj_0
         compare@%o1_getYDirAdj_0
         compare@%o2_getYDirAdj_0
         compare@%o1_getHeightDir_0
         compare@%o2_getHeightDir_0
         compare@%o1_getWidthDirAdj_0
         compare@%o2_getWidthDirAdj_0
         compare@%.0_0))
(rule (compare false
         false
         false
         compare@%o1_getDir_0
         compare@%o2_getDir_0
         compare@%o1_getXDirAdj_0
         compare@%o2_getXDirAdj_0
         compare@%o1_getYDirAdj_0
         compare@%o2_getYDirAdj_0
         compare@%o1_getHeightDir_0
         compare@%o2_getHeightDir_0
         compare@%o1_getWidthDirAdj_0
         compare@%o2_getWidthDirAdj_0
         compare@%.0_0))
(rule (compare_1 0
           compare@%.0_0
           compare@%o1_getWidthDirAdj_0
           compare@%o2_getWidthDirAdj_0
           compare@%o1_getHeightDir_0
           compare@%o2_getHeightDir_0
           compare@%o1_getXDirAdj_0
           compare@%o2_getXDirAdj_0
           compare@%o1_getYDirAdj_0
           compare@%o2_getYDirAdj_0
           compare@%o1_getDir_0
           compare@%o2_getDir_0))
(rule (let ((a!1 (= compare@%_call4_0
              (ite (< (- compare@%o1_getYDirAdj_0 compare@%o2_getYDirAdj_0) 0)
                   (- 0 (- compare@%o1_getYDirAdj_0 compare@%o2_getYDirAdj_0))
                   (- compare@%o1_getYDirAdj_0 compare@%o2_getYDirAdj_0))))
      (a!2 (= compare@%_call8_0
              (ite (< (- compare@%o1_getXDirAdj_0 compare@%o2_getXDirAdj_0) 0)
                   (- 0 (- compare@%o1_getXDirAdj_0 compare@%o2_getXDirAdj_0))
                   (- compare@%o1_getXDirAdj_0 compare@%o2_getXDirAdj_0))))
      (a!3 (= compare@%_call12_0
              (ite (< (- compare@%o1_getHeightDir_0 compare@%o2_getHeightDir_0)
                      0)
                   (- 0
                      (- compare@%o1_getHeightDir_0 compare@%o2_getHeightDir_0))
                   (- compare@%o1_getHeightDir_0 compare@%o2_getHeightDir_0))))
      (a!4 (= compare@%_call16_0
              (ite (< (- compare@%o1_getWidthDirAdj_0
                         compare@%o2_getWidthDirAdj_0)
                      0)
                   (- 0
                      (- compare@%o1_getWidthDirAdj_0
                         compare@%o2_getWidthDirAdj_0))
                   (- compare@%o1_getWidthDirAdj_0 compare@%o2_getWidthDirAdj_0)))))
(let ((a!5 (and (compare_1 0
                           compare@%.0_0
                           compare@%o1_getWidthDirAdj_0
                           compare@%o2_getWidthDirAdj_0
                           compare@%o1_getHeightDir_0
                           compare@%o2_getHeightDir_0
                           compare@%o1_getXDirAdj_0
                           compare@%o2_getXDirAdj_0
                           compare@%o1_getYDirAdj_0
                           compare@%o2_getYDirAdj_0
                           compare@%o1_getDir_0
                           compare@%o2_getDir_0)
                true
                (=> compare@_3_0 (and compare@_3_0 compare@_call_0))
                (=> (and compare@_3_0 compare@_call_0)
                    (not (< compare@%o1_getDir_0 compare@%o2_getDir_0)))
                (=> compare@_call2_0 (and compare@_call2_0 compare@_3_0))
                (=> (and compare@_call2_0 compare@_3_0)
                    (not (> compare@%o1_getDir_0 compare@%o2_getDir_0)))
                a!1
                (=> compare@_38_0 (and compare@_38_0 compare@_call2_0))
                (=> (and compare@_38_0 compare@_call2_0)
                    (not (< compare@%_call4_0 1)))
                (= compare@%_call21_0
                   (ite (< compare@%o1_getYDirAdj_0 compare@%o2_getYDirAdj_0)
                        (- 1)
                        1))
                (=> compare@_call6_0 (and compare@_call6_0 compare@_call2_0))
                (=> (and compare@_call6_0 compare@_call2_0)
                    (< compare@%_call4_0 1))
                a!2
                (=> compare@_35_0 (and compare@_35_0 compare@_call6_0))
                (=> (and compare@_35_0 compare@_call6_0)
                    (not (< compare@%_call8_0 1)))
                (= compare@%_call20_0
                   (ite (< compare@%o1_getXDirAdj_0 compare@%o2_getXDirAdj_0)
                        (- 1)
                        1))
                (=> compare@_call10_0 (and compare@_call10_0 compare@_call6_0))
                (=> (and compare@_call10_0 compare@_call6_0)
                    (< compare@%_call8_0 1))
                a!3
                (=> compare@_32_0 (and compare@_32_0 compare@_call10_0))
                (=> (and compare@_32_0 compare@_call10_0)
                    (not (< compare@%_call12_0 1)))
                (= compare@%_call19_0
                   (ite (< compare@%o1_getHeightDir_0
                           compare@%o2_getHeightDir_0)
                        (- 1)
                        1))
                (=> compare@_call14_0 (and compare@_call14_0 compare@_call10_0))
                (=> (and compare@_call14_0 compare@_call10_0)
                    (< compare@%_call12_0 1))
                a!4
                (=> compare@_29_0 (and compare@_29_0 compare@_call14_0))
                (=> (and compare@_29_0 compare@_call14_0)
                    (not (< compare@%_call16_0 1)))
                (= compare@%_call18_0
                   (ite (< compare@%o1_getWidthDirAdj_0
                           compare@%o2_getWidthDirAdj_0)
                        (- 1)
                        1))
                (=> |tuple(compare@_call14_0, compare@_.0_0)| compare@_call14_0)
                (=> |tuple(compare@_3_0, compare@_.0_0)| compare@_3_0)
                (=> |tuple(compare@_call_0, compare@_.0_0)| compare@_call_0)
                (=> compare@_.0_0
                    (or (and compare@_.0_0 compare@_38_0)
                        (and compare@_.0_0 compare@_35_0)
                        (and compare@_.0_0 compare@_32_0)
                        (and compare@_.0_0 compare@_29_0)
                        (and compare@_call14_0
                             |tuple(compare@_call14_0, compare@_.0_0)|)
                        (and compare@_3_0 |tuple(compare@_3_0, compare@_.0_0)|)
                        (and compare@_call_0
                             |tuple(compare@_call_0, compare@_.0_0)|)))
                (= compare@%.0_1 compare@%_call21_0)
                (= compare@%.0_2 compare@%_call20_0)
                (= compare@%.0_3 compare@%_call19_0)
                (= compare@%.0_4 compare@%_call18_0)
                (=> (and compare@_call14_0
                         |tuple(compare@_call14_0, compare@_.0_0)|)
                    (< compare@%_call16_0 1))
                (= compare@%.0_5 0)
                (=> (and compare@_3_0 |tuple(compare@_3_0, compare@_.0_0)|)
                    (> compare@%o1_getDir_0 compare@%o2_getDir_0))
                (= compare@%.0_6 1)
                (=> (and compare@_call_0
                         |tuple(compare@_call_0, compare@_.0_0)|)
                    (< compare@%o1_getDir_0 compare@%o2_getDir_0))
                (= compare@%.0_7 (- 1))
                (=> (and compare@_.0_0 compare@_38_0)
                    (= compare@%.0_8 compare@%.0_1))
                (=> (and compare@_.0_0 compare@_35_0)
                    (= compare@%.0_8 compare@%.0_2))
                (=> (and compare@_.0_0 compare@_32_0)
                    (= compare@%.0_8 compare@%.0_3))
                (=> (and compare@_.0_0 compare@_29_0)
                    (= compare@%.0_8 compare@%.0_4))
                (=> (and compare@_call14_0
                         |tuple(compare@_call14_0, compare@_.0_0)|)
                    (= compare@%.0_8 compare@%.0_5))
                (=> (and compare@_3_0 |tuple(compare@_3_0, compare@_.0_0)|)
                    (= compare@%.0_8 compare@%.0_6))
                (=> (and compare@_call_0
                         |tuple(compare@_call_0, compare@_.0_0)|)
                    (= compare@%.0_8 compare@%.0_7))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!5
      (compare_1 1
                 compare@%.0_8
                 compare@%o1_getWidthDirAdj_0
                 compare@%o2_getWidthDirAdj_0
                 compare@%o1_getHeightDir_0
                 compare@%o2_getHeightDir_0
                 compare@%o1_getXDirAdj_0
                 compare@%o2_getXDirAdj_0
                 compare@%o1_getYDirAdj_0
                 compare@%o2_getYDirAdj_0
                 compare@%o1_getDir_0
                 compare@%o2_getDir_0)))))
(rule (=> (compare_1 1
               compare@%.0_0
               compare@%o1_getWidthDirAdj_0
               compare@%o2_getWidthDirAdj_0
               compare@%o1_getHeightDir_0
               compare@%o2_getHeightDir_0
               compare@%o1_getXDirAdj_0
               compare@%o2_getXDirAdj_0
               compare@%o1_getYDirAdj_0
               compare@%o2_getYDirAdj_0
               compare@%o1_getDir_0
               compare@%o2_getDir_0)
    (compare true
             false
             false
             compare@%o1_getDir_0
             compare@%o2_getDir_0
             compare@%o1_getXDirAdj_0
             compare@%o2_getXDirAdj_0
             compare@%o1_getYDirAdj_0
             compare@%o2_getYDirAdj_0
             compare@%o1_getHeightDir_0
             compare@%o2_getHeightDir_0
             compare@%o1_getWidthDirAdj_0
             compare@%o2_getWidthDirAdj_0
             compare@%.0_0)))
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
                  main@%_br_0)
         (=> main@.split_0 (and main@.split_0 main@_call_0))
         main@.split_0)
    (main_1 1)))
