(set-info :original "Chromosome-false.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool (Array Int Int) (Array Int Int) Int Int Int Int Int ))
(declare-rel compare_1 (Int (Array Int Int) (Array Int Int) Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%_call34_0 Int )
(declare-var compare@%_76_0 Int )
(declare-var compare@%_call35_0 Int )
(declare-var compare@%_78_0 Int )
(declare-var compare@%_call31_0 Int )
(declare-var compare@%_70_0 Int )
(declare-var compare@%_call32_0 Int )
(declare-var compare@%_72_0 Int )
(declare-var compare@%_82_2 Int )
(declare-var compare@%_call27_0 Int )
(declare-var compare@%_61_0 Int )
(declare-var compare@%_call28_0 Int )
(declare-var compare@%_63_0 Int )
(declare-var compare@%_call24_0 Int )
(declare-var compare@%_55_0 Int )
(declare-var compare@%_call25_0 Int )
(declare-var compare@%_57_0 Int )
(declare-var compare@%_67_2 Int )
(declare-var compare@%_call20_0 Int )
(declare-var compare@%_46_0 Int )
(declare-var compare@%_call21_0 Int )
(declare-var compare@%_48_0 Int )
(declare-var compare@%_call17_0 Int )
(declare-var compare@%_40_0 Int )
(declare-var compare@%_call18_0 Int )
(declare-var compare@%_42_0 Int )
(declare-var compare@%_52_2 Int )
(declare-var compare@%_call13_0 Int )
(declare-var compare@%_31_0 Int )
(declare-var compare@%_call14_0 Int )
(declare-var compare@%_33_0 Int )
(declare-var compare@%_call10_0 Int )
(declare-var compare@%_25_0 Int )
(declare-var compare@%_call11_0 Int )
(declare-var compare@%_27_0 Int )
(declare-var compare@%_37_2 Int )
(declare-var compare@%_call6_0 Int )
(declare-var compare@%_17_0 Int )
(declare-var compare@%_call7_0 Int )
(declare-var compare@%_19_0 Int )
(declare-var compare@%_call3_0 Int )
(declare-var compare@%_11_0 Int )
(declare-var compare@%_call4_0 Int )
(declare-var compare@%_13_0 Int )
(declare-var compare@%_call9_2 Int )
(declare-var compare@%o1_isNull_0 Int )
(declare-var @assume_0 Int )
(declare-var compare@%o2_isNull_0 Int )
(declare-var compare@%.0_3 Int )
(declare-var compare@%_2_0 (Array Int Int) )
(declare-var compare@%_call_0 (Array Int Int) )
(declare-var compare@%o1_getScore_0 Int )
(declare-var compare@%o2_getScore_0 Int )
(declare-var compare@%.0_0 Int )
(declare-var compare@_1_0 Bool )
(declare-var compare@_call2_0 Bool )
(declare-var compare@_15_0 Bool )
(declare-var compare@%_br8_0 Int )
(declare-var compare@_22_0 Bool )
(declare-var |tuple(compare@_call2_0, compare@_22_0)| Bool )
(declare-var compare@%_call9_0 Int )
(declare-var compare@%_call9_1 Int )
(declare-var compare@_29_0 Bool )
(declare-var compare@%_br15_0 Int )
(declare-var compare@_36_0 Bool )
(declare-var |tuple(compare@_22_0, compare@_36_0)| Bool )
(declare-var compare@%_37_0 Int )
(declare-var compare@%_37_1 Int )
(declare-var compare@_44_0 Bool )
(declare-var compare@%_br22_0 Int )
(declare-var compare@_51_0 Bool )
(declare-var |tuple(compare@_36_0, compare@_51_0)| Bool )
(declare-var compare@%_52_0 Int )
(declare-var compare@%_52_1 Int )
(declare-var compare@_59_0 Bool )
(declare-var compare@%_br29_0 Int )
(declare-var compare@_66_0 Bool )
(declare-var |tuple(compare@_51_0, compare@_66_0)| Bool )
(declare-var compare@%_67_0 Int )
(declare-var compare@%_67_1 Int )
(declare-var compare@_74_0 Bool )
(declare-var compare@%_br36_0 Int )
(declare-var compare@_81_0 Bool )
(declare-var |tuple(compare@_66_0, compare@_81_0)| Bool )
(declare-var compare@%_82_0 Int )
(declare-var compare@%_82_1 Int )
(declare-var compare@_85_0 Bool )
(declare-var compare@%._0 Int )
(declare-var compare@_.0_0 Bool )
(declare-var |tuple(compare@_81_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_1_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_1 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@%.0_4 Int )
(declare-var compare@.split_0 Bool )
(declare-var main@%_2_0 (Array Int Int) )
(declare-var main@%_call_0 (Array Int Int) )
(declare-var main@%_4_0 Int )
(declare-var main@%_5_0 Int )
(declare-var main@%_6_0 Int )
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
         compare@%_2_0
         compare@%_call_0
         compare@%o1_isNull_0
         compare@%o2_isNull_0
         compare@%o1_getScore_0
         compare@%o2_getScore_0
         compare@%.0_0))
(rule (compare false
         true
         true
         compare@%_2_0
         compare@%_call_0
         compare@%o1_isNull_0
         compare@%o2_isNull_0
         compare@%o1_getScore_0
         compare@%o2_getScore_0
         compare@%.0_0))
(rule (compare false
         false
         false
         compare@%_2_0
         compare@%_call_0
         compare@%o1_isNull_0
         compare@%o2_isNull_0
         compare@%o1_getScore_0
         compare@%o2_getScore_0
         compare@%.0_0))
(rule (compare_1 0
           compare@%_2_0
           compare@%_call_0
           compare@%.0_0
           compare@%o1_getScore_0
           compare@%o2_getScore_0
           compare@%o1_isNull_0
           @assume_0
           compare@%o2_isNull_0))
(rule (let ((a!1 (=> (and compare@_85_0 compare@_81_0)
               (not (= (+ compare@%_call9_2
                          compare@%_37_2
                          compare@%_52_2
                          compare@%_67_2
                          compare@%_82_2)
                       0))))
      (a!2 (= compare@%._0
              (ite (> (+ compare@%_call9_2
                         compare@%_37_2
                         compare@%_52_2
                         compare@%_67_2
                         compare@%_82_2)
                      0)
                   1
                   (- 1)))))
(let ((a!3 (and (compare_1 0
                           compare@%_2_0
                           compare@%_call_0
                           compare@%.0_0
                           compare@%o1_getScore_0
                           compare@%o2_getScore_0
                           compare@%o1_isNull_0
                           @assume_0
                           compare@%o2_isNull_0)
                true
                (=> compare@_call2_0 (and compare@_call2_0 compare@_1_0))
                (=> (and compare@_call2_0 compare@_1_0)
                    (not (= compare@%o2_isNull_0 0)))
                (= compare@%_call3_0 (+ compare@%o1_getScore_0 (* 1 4)))
                (=> compare@_call2_0
                    (or (<= compare@%o1_getScore_0 0) (> compare@%_call3_0 0)))
                (=> compare@_call2_0 (> compare@%o1_getScore_0 0))
                (=> compare@_call2_0
                    (= compare@%_11_0 (select compare@%_2_0 compare@%_call3_0)))
                (= compare@%_call4_0 (+ compare@%o2_getScore_0 (* 1 4)))
                (=> compare@_call2_0
                    (or (<= compare@%o2_getScore_0 0) (> compare@%_call4_0 0)))
                (=> compare@_call2_0 (> compare@%o2_getScore_0 0))
                (=> compare@_call2_0
                    (= compare@%_13_0
                       (select compare@%_call_0 compare@%_call4_0)))
                (=> compare@_15_0 (and compare@_15_0 compare@_call2_0))
                (=> (and compare@_15_0 compare@_call2_0)
                    (not (= compare@%_11_0 compare@%_13_0)))
                (= compare@%_call6_0 (+ compare@%o1_getScore_0 (* 1 4)))
                (=> compare@_15_0
                    (or (<= compare@%o1_getScore_0 0) (> compare@%_call6_0 0)))
                (=> compare@_15_0 (> compare@%o1_getScore_0 0))
                (=> compare@_15_0
                    (= compare@%_17_0 (select compare@%_2_0 compare@%_call6_0)))
                (= compare@%_call7_0 (+ compare@%o2_getScore_0 (* 1 4)))
                (=> compare@_15_0
                    (or (<= compare@%o2_getScore_0 0) (> compare@%_call7_0 0)))
                (=> compare@_15_0 (> compare@%o2_getScore_0 0))
                (=> compare@_15_0
                    (= compare@%_19_0
                       (select compare@%_call_0 compare@%_call7_0)))
                (= compare@%_br8_0
                   (ite (> compare@%_17_0 compare@%_19_0) 1 (- 1)))
                (=> |tuple(compare@_call2_0, compare@_22_0)| compare@_call2_0)
                (=> compare@_22_0
                    (or (and compare@_22_0 compare@_15_0)
                        (and compare@_call2_0
                             |tuple(compare@_call2_0, compare@_22_0)|)))
                (= compare@%_call9_0 compare@%_br8_0)
                (=> (and compare@_call2_0
                         |tuple(compare@_call2_0, compare@_22_0)|)
                    (= compare@%_11_0 compare@%_13_0))
                (= compare@%_call9_1 0)
                (=> (and compare@_22_0 compare@_15_0)
                    (= compare@%_call9_2 compare@%_call9_0))
                (=> (and compare@_call2_0
                         |tuple(compare@_call2_0, compare@_22_0)|)
                    (= compare@%_call9_2 compare@%_call9_1))
                (= compare@%_call10_0 (+ compare@%o1_getScore_0 (* 2 4)))
                (=> compare@_22_0
                    (or (<= compare@%o1_getScore_0 0) (> compare@%_call10_0 0)))
                (=> compare@_22_0 (> compare@%o1_getScore_0 0))
                (=> compare@_22_0
                    (= compare@%_25_0 (select compare@%_2_0 compare@%_call10_0)))
                (= compare@%_call11_0 (+ compare@%o2_getScore_0 (* 2 4)))
                (=> compare@_22_0
                    (or (<= compare@%o2_getScore_0 0) (> compare@%_call11_0 0)))
                (=> compare@_22_0 (> compare@%o2_getScore_0 0))
                (=> compare@_22_0
                    (= compare@%_27_0
                       (select compare@%_call_0 compare@%_call11_0)))
                (=> compare@_29_0 (and compare@_29_0 compare@_22_0))
                (=> (and compare@_29_0 compare@_22_0)
                    (not (= compare@%_25_0 compare@%_27_0)))
                (= compare@%_call13_0 (+ compare@%o1_getScore_0 (* 2 4)))
                (=> compare@_29_0
                    (or (<= compare@%o1_getScore_0 0) (> compare@%_call13_0 0)))
                (=> compare@_29_0 (> compare@%o1_getScore_0 0))
                (=> compare@_29_0
                    (= compare@%_31_0 (select compare@%_2_0 compare@%_call13_0)))
                (= compare@%_call14_0 (+ compare@%o2_getScore_0 (* 2 4)))
                (=> compare@_29_0
                    (or (<= compare@%o2_getScore_0 0) (> compare@%_call14_0 0)))
                (=> compare@_29_0 (> compare@%o2_getScore_0 0))
                (=> compare@_29_0
                    (= compare@%_33_0
                       (select compare@%_call_0 compare@%_call14_0)))
                (= compare@%_br15_0
                   (ite (> compare@%_31_0 compare@%_33_0) 1 (- 1)))
                (=> |tuple(compare@_22_0, compare@_36_0)| compare@_22_0)
                (=> compare@_36_0
                    (or (and compare@_36_0 compare@_29_0)
                        (and compare@_22_0
                             |tuple(compare@_22_0, compare@_36_0)|)))
                (= compare@%_37_0 compare@%_br15_0)
                (=> (and compare@_22_0 |tuple(compare@_22_0, compare@_36_0)|)
                    (= compare@%_25_0 compare@%_27_0))
                (= compare@%_37_1 0)
                (=> (and compare@_36_0 compare@_29_0)
                    (= compare@%_37_2 compare@%_37_0))
                (=> (and compare@_22_0 |tuple(compare@_22_0, compare@_36_0)|)
                    (= compare@%_37_2 compare@%_37_1))
                (= compare@%_call17_0 (+ compare@%o1_getScore_0 (* 3 4)))
                (=> compare@_36_0
                    (or (<= compare@%o1_getScore_0 0) (> compare@%_call17_0 0)))
                (=> compare@_36_0 (> compare@%o1_getScore_0 0))
                (=> compare@_36_0
                    (= compare@%_40_0 (select compare@%_2_0 compare@%_call17_0)))
                (= compare@%_call18_0 (+ compare@%o2_getScore_0 (* 3 4)))
                (=> compare@_36_0
                    (or (<= compare@%o2_getScore_0 0) (> compare@%_call18_0 0)))
                (=> compare@_36_0 (> compare@%o2_getScore_0 0))
                (=> compare@_36_0
                    (= compare@%_42_0
                       (select compare@%_call_0 compare@%_call18_0)))
                (=> compare@_44_0 (and compare@_44_0 compare@_36_0))
                (=> (and compare@_44_0 compare@_36_0)
                    (not (= compare@%_40_0 compare@%_42_0)))
                (= compare@%_call20_0 (+ compare@%o1_getScore_0 (* 3 4)))
                (=> compare@_44_0
                    (or (<= compare@%o1_getScore_0 0) (> compare@%_call20_0 0)))
                (=> compare@_44_0 (> compare@%o1_getScore_0 0))
                (=> compare@_44_0
                    (= compare@%_46_0 (select compare@%_2_0 compare@%_call20_0)))
                (= compare@%_call21_0 (+ compare@%o2_getScore_0 (* 3 4)))
                (=> compare@_44_0
                    (or (<= compare@%o2_getScore_0 0) (> compare@%_call21_0 0)))
                (=> compare@_44_0 (> compare@%o2_getScore_0 0))
                (=> compare@_44_0
                    (= compare@%_48_0
                       (select compare@%_call_0 compare@%_call21_0)))
                (= compare@%_br22_0
                   (ite (> compare@%_46_0 compare@%_48_0) 1 (- 1)))
                (=> |tuple(compare@_36_0, compare@_51_0)| compare@_36_0)
                (=> compare@_51_0
                    (or (and compare@_51_0 compare@_44_0)
                        (and compare@_36_0
                             |tuple(compare@_36_0, compare@_51_0)|)))
                (= compare@%_52_0 compare@%_br22_0)
                (=> (and compare@_36_0 |tuple(compare@_36_0, compare@_51_0)|)
                    (= compare@%_40_0 compare@%_42_0))
                (= compare@%_52_1 0)
                (=> (and compare@_51_0 compare@_44_0)
                    (= compare@%_52_2 compare@%_52_0))
                (=> (and compare@_36_0 |tuple(compare@_36_0, compare@_51_0)|)
                    (= compare@%_52_2 compare@%_52_1))
                (= compare@%_call24_0 (+ compare@%o1_getScore_0 (* 5 4)))
                (=> compare@_51_0
                    (or (<= compare@%o1_getScore_0 0) (> compare@%_call24_0 0)))
                (=> compare@_51_0 (> compare@%o1_getScore_0 0))
                (=> compare@_51_0
                    (= compare@%_55_0 (select compare@%_2_0 compare@%_call24_0)))
                (= compare@%_call25_0 (+ compare@%o2_getScore_0 (* 5 4)))
                (=> compare@_51_0
                    (or (<= compare@%o2_getScore_0 0) (> compare@%_call25_0 0)))
                (=> compare@_51_0 (> compare@%o2_getScore_0 0))
                (=> compare@_51_0
                    (= compare@%_57_0
                       (select compare@%_call_0 compare@%_call25_0)))
                (=> compare@_59_0 (and compare@_59_0 compare@_51_0))
                (=> (and compare@_59_0 compare@_51_0)
                    (not (= compare@%_55_0 compare@%_57_0)))
                (= compare@%_call27_0 (+ compare@%o1_getScore_0 (* 5 4)))
                (=> compare@_59_0
                    (or (<= compare@%o1_getScore_0 0) (> compare@%_call27_0 0)))
                (=> compare@_59_0 (> compare@%o1_getScore_0 0))
                (=> compare@_59_0
                    (= compare@%_61_0 (select compare@%_2_0 compare@%_call27_0)))
                (= compare@%_call28_0 (+ compare@%o2_getScore_0 (* 5 4)))
                (=> compare@_59_0
                    (or (<= compare@%o2_getScore_0 0) (> compare@%_call28_0 0)))
                (=> compare@_59_0 (> compare@%o2_getScore_0 0))
                (=> compare@_59_0
                    (= compare@%_63_0
                       (select compare@%_call_0 compare@%_call28_0)))
                (= compare@%_br29_0
                   (ite (> compare@%_61_0 compare@%_63_0) 1 (- 1)))
                (=> |tuple(compare@_51_0, compare@_66_0)| compare@_51_0)
                (=> compare@_66_0
                    (or (and compare@_66_0 compare@_59_0)
                        (and compare@_51_0
                             |tuple(compare@_51_0, compare@_66_0)|)))
                (= compare@%_67_0 compare@%_br29_0)
                (=> (and compare@_51_0 |tuple(compare@_51_0, compare@_66_0)|)
                    (= compare@%_55_0 compare@%_57_0))
                (= compare@%_67_1 0)
                (=> (and compare@_66_0 compare@_59_0)
                    (= compare@%_67_2 compare@%_67_0))
                (=> (and compare@_51_0 |tuple(compare@_51_0, compare@_66_0)|)
                    (= compare@%_67_2 compare@%_67_1))
                (= compare@%_call31_0 (+ compare@%o1_getScore_0 (* 7 4)))
                (=> compare@_66_0
                    (or (<= compare@%o1_getScore_0 0) (> compare@%_call31_0 0)))
                (=> compare@_66_0 (> compare@%o1_getScore_0 0))
                (=> compare@_66_0
                    (= compare@%_70_0 (select compare@%_2_0 compare@%_call31_0)))
                (= compare@%_call32_0 (+ compare@%o2_getScore_0 (* 7 4)))
                (=> compare@_66_0
                    (or (<= compare@%o2_getScore_0 0) (> compare@%_call32_0 0)))
                (=> compare@_66_0 (> compare@%o2_getScore_0 0))
                (=> compare@_66_0
                    (= compare@%_72_0
                       (select compare@%_call_0 compare@%_call32_0)))
                (=> compare@_74_0 (and compare@_74_0 compare@_66_0))
                (=> (and compare@_74_0 compare@_66_0)
                    (not (= compare@%_70_0 compare@%_72_0)))
                (= compare@%_call34_0 (+ compare@%o1_getScore_0 (* 7 4)))
                (=> compare@_74_0
                    (or (<= compare@%o1_getScore_0 0) (> compare@%_call34_0 0)))
                (=> compare@_74_0 (> compare@%o1_getScore_0 0))
                (=> compare@_74_0
                    (= compare@%_76_0 (select compare@%_2_0 compare@%_call34_0)))
                (= compare@%_call35_0 (+ compare@%o2_getScore_0 (* 7 4)))
                (=> compare@_74_0
                    (or (<= compare@%o2_getScore_0 0) (> compare@%_call35_0 0)))
                (=> compare@_74_0 (> compare@%o2_getScore_0 0))
                (=> compare@_74_0
                    (= compare@%_78_0
                       (select compare@%_call_0 compare@%_call35_0)))
                (= compare@%_br36_0
                   (ite (> compare@%_76_0 compare@%_78_0) 1 (- 1)))
                (=> |tuple(compare@_66_0, compare@_81_0)| compare@_66_0)
                (=> compare@_81_0
                    (or (and compare@_81_0 compare@_74_0)
                        (and compare@_66_0
                             |tuple(compare@_66_0, compare@_81_0)|)))
                (= compare@%_82_0 compare@%_br36_0)
                (=> (and compare@_66_0 |tuple(compare@_66_0, compare@_81_0)|)
                    (= compare@%_70_0 compare@%_72_0))
                (= compare@%_82_1 0)
                (=> (and compare@_81_0 compare@_74_0)
                    (= compare@%_82_2 compare@%_82_0))
                (=> (and compare@_66_0 |tuple(compare@_66_0, compare@_81_0)|)
                    (= compare@%_82_2 compare@%_82_1))
                (=> compare@_85_0 (and compare@_85_0 compare@_81_0))
                a!1
                a!2
                (=> |tuple(compare@_81_0, compare@_.0_0)| compare@_81_0)
                (=> |tuple(compare@_1_0, compare@_.0_0)| compare@_1_0)
                (=> compare@_.0_0
                    (or (and compare@_.0_0 compare@_85_0)
                        (and compare@_81_0
                             |tuple(compare@_81_0, compare@_.0_0)|)
                        (and compare@_1_0 |tuple(compare@_1_0, compare@_.0_0)|)))
                (= compare@%.0_1 compare@%._0)
                (=> (and compare@_81_0 |tuple(compare@_81_0, compare@_.0_0)|)
                    (= (+ compare@%_call9_2
                          compare@%_37_2
                          compare@%_52_2
                          compare@%_67_2
                          compare@%_82_2)
                       0))
                (= compare@%.0_2 0)
                (=> (and compare@_1_0 |tuple(compare@_1_0, compare@_.0_0)|)
                    (= compare@%o2_isNull_0 0))
                (= compare@%.0_3 1)
                (=> (and compare@_.0_0 compare@_85_0)
                    (= compare@%.0_4 compare@%.0_1))
                (=> (and compare@_81_0 |tuple(compare@_81_0, compare@_.0_0)|)
                    (= compare@%.0_4 compare@%.0_2))
                (=> (and compare@_1_0 |tuple(compare@_1_0, compare@_.0_0)|)
                    (= compare@%.0_4 compare@%.0_3))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!3
      (compare_1 1
                 compare@%_2_0
                 compare@%_call_0
                 compare@%.0_4
                 compare@%o1_getScore_0
                 compare@%o2_getScore_0
                 compare@%o1_isNull_0
                 @assume_0
                 compare@%o2_isNull_0)))))
(rule (=> (compare_1 1
               compare@%_2_0
               compare@%_call_0
               compare@%.0_0
               compare@%o1_getScore_0
               compare@%o2_getScore_0
               compare@%o1_isNull_0
               @assume_0
               compare@%o2_isNull_0)
    (compare true
             false
             false
             compare@%_2_0
             compare@%_call_0
             compare@%o1_isNull_0
             compare@%o2_isNull_0
             compare@%o1_getScore_0
             compare@%o2_getScore_0
             compare@%.0_0)))
(rule (main_1 0))
(rule (=> (and (main_1 0)
         true
         (compare true
                  false
                  false
                  main@%_2_0
                  main@%_call_0
                  main@%_4_0
                  main@%_5_0
                  main@%_6_0
                  main@%_call2_0
                  main@%_br_0)
         (=> main@.split_0 (and main@.split_0 main@_1_0))
         main@.split_0)
    (main_1 1)))
