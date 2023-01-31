(set-info :original "PokerHand-true.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int Int Int Int Int Int Int ))
(declare-rel compare_1 (Int (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int Int Int Int Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%_116_0 Int )
(declare-var compare@%_113_0 Int )
(declare-var compare@%_109_0 Int )
(declare-var compare@%_106_0 Int )
(declare-var compare@%_102_0 Int )
(declare-var compare@%_99_0 Int )
(declare-var compare@%_96_0 Int )
(declare-var compare@%_93_0 Int )
(declare-var compare@%_call67_0 Int )
(declare-var compare@%_120_0 Int )
(declare-var compare@%_call47_0 Int )
(declare-var compare@%o1_lastIndexOf_0 Int )
(declare-var compare@%_call49_0 Int )
(declare-var compare@%_89_0 Int )
(declare-var compare@%_call45_0 Int )
(declare-var compare@%_83_0 Int )
(declare-var compare@%_call71_0 Int )
(declare-var compare@%_128_0 Int )
(declare-var compare@%_call41_0 Int )
(declare-var compare@%_75_0 Int )
(declare-var compare@%_call35_0 Int )
(declare-var compare@%o1_countOccurrencesOf_0 Int )
(declare-var compare@%_call37_0 Int )
(declare-var compare@%o2_countOccurrencesOf_0 Int )
(declare-var compare@%_call29_0 Int )
(declare-var compare@%_55_0 Int )
(declare-var compare@%_call27_0 Int )
(declare-var compare@%_51_0 Int )
(declare-var compare@%_call25_0 Int )
(declare-var compare@%_47_0 Int )
(declare-var compare@%_call23_0 Int )
(declare-var compare@%_43_0 Int )
(declare-var compare@%_call21_0 Int )
(declare-var compare@%_39_0 Int )
(declare-var compare@%_call19_0 Int )
(declare-var compare@%_35_0 Int )
(declare-var compare@%_call17_0 Int )
(declare-var compare@%_31_0 Int )
(declare-var compare@%_call15_0 Int )
(declare-var compare@%_27_0 Int )
(declare-var compare@%_call32_0 Int )
(declare-var compare@%_61_0 Int )
(declare-var compare@%_call33_0 Int )
(declare-var compare@%_63_0 Int )
(declare-var compare@%_call11_0 Int )
(declare-var compare@%_19_0 Int )
(declare-var compare@%_call12_0 Int )
(declare-var compare@%_21_0 Int )
(declare-var compare@%_call9_0 Int )
(declare-var compare@%_15_0 Int )
(declare-var compare@%_call8_0 Int )
(declare-var compare@%_11_0 Int )
(declare-var compare@%_5_0 (Array Int Int) )
(declare-var compare@%_call_0 (Array Int Int) )
(declare-var compare@%_3_0 (Array Int Int) )
(declare-var compare@%_6_0 (Array Int Int) )
(declare-var compare@%_7_0 (Array Int Int) )
(declare-var compare@%_2_0 (Array Int Int) )
(declare-var compare@%_4_0 (Array Int Int) )
(declare-var compare@%_8_0 (Array Int Int) )
(declare-var compare@%o1_indexOf_0 Int )
(declare-var compare@%o2_indexOf_0 Int )
(declare-var compare@%o1_charAt_0 Int )
(declare-var compare@%o2_charAt_0 Int )
(declare-var compare@%o2_lastIndexOf_0 Int )
(declare-var compare@%.0_0 Int )
(declare-var compare@%_call48_0 Int )
(declare-var compare@%i1.0_0 Int )
(declare-var compare@_1_0 Bool )
(declare-var compare@_13_0 Bool )
(declare-var compare@_17_0 Bool )
(declare-var |tuple(compare@_13_0, compare@_17_0)| Bool )
(declare-var |tuple(compare@_1_0, compare@_17_0)| Bool )
(declare-var compare@_i1.0_0 Bool )
(declare-var compare@%i1.0_1 Int )
(declare-var compare@%i1.0_2 Int )
(declare-var compare@_65_0 Bool )
(declare-var compare@%_call36_0 Int )
(declare-var compare@%_call38_0 Int )
(declare-var compare@_71_0 Bool )
(declare-var compare@_73_0 Bool )
(declare-var compare@_77_0 Bool )
(declare-var |tuple(compare@_73_0, compare@_77_0)| Bool )
(declare-var |tuple(compare@_65_0, compare@_77_0)| Bool )
(declare-var compare@_79_0 Bool )
(declare-var compare@_81_0 Bool )
(declare-var compare@_85_0 Bool )
(declare-var |tuple(compare@_81_0, compare@_85_0)| Bool )
(declare-var |tuple(compare@_77_0, compare@_85_0)| Bool )
(declare-var compare@%_call48_1 Int )
(declare-var compare@_cond2_0 Bool )
(declare-var compare@_59_0 Bool )
(declare-var compare@_122_0 Bool )
(declare-var |tuple(compare@_73_0, compare@_122_0)| Bool )
(declare-var |tuple(compare@_71_0, compare@_122_0)| Bool )
(declare-var compare@_124_0 Bool )
(declare-var compare@_126_0 Bool )
(declare-var compare@_br73_0 Bool )
(declare-var |tuple(compare@_126_0, compare@_br73_0)| Bool )
(declare-var |tuple(compare@_124_0, compare@_br73_0)| Bool )
(declare-var compare@_118_0 Bool )
(declare-var compare@_.0_0 Bool )
(declare-var |tuple(compare@_126_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_122_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_81_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_79_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_1 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@%.0_3 Int )
(declare-var compare@%.0_4 Int )
(declare-var compare@%.0_5 Int )
(declare-var compare@%.0_6 Int )
(declare-var compare@%.0_7 Int )
(declare-var compare@%.0_8 Int )
(declare-var compare@.split_0 Bool )
(declare-var compare@_25_0 Bool )
(declare-var compare@_29_0 Bool )
(declare-var compare@_33_0 Bool )
(declare-var compare@_37_0 Bool )
(declare-var compare@_41_0 Bool )
(declare-var |tuple(compare@_37_0, compare@_41_0)| Bool )
(declare-var |tuple(compare@_33_0, compare@_41_0)| Bool )
(declare-var |tuple(compare@_29_0, compare@_41_0)| Bool )
(declare-var |tuple(compare@_25_0, compare@_41_0)| Bool )
(declare-var compare@_45_0 Bool )
(declare-var compare@_49_0 Bool )
(declare-var |tuple(compare@_45_0, compare@_49_0)| Bool )
(declare-var |tuple(compare@_41_0, compare@_49_0)| Bool )
(declare-var compare@_53_0 Bool )
(declare-var compare@_57_0 Bool )
(declare-var |tuple(compare@_53_0, compare@_57_0)| Bool )
(declare-var |tuple(compare@_49_0, compare@_57_0)| Bool )
(declare-var compare@_i1.0_1 Bool )
(declare-var |tuple(compare@_53_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_45_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_37_0, compare@_.0_0)| Bool )
(declare-var compare@_call51_0 Bool )
(declare-var compare@_call53_0 Bool )
(declare-var compare@_call55_0 Bool )
(declare-var |tuple(compare@_call53_0, compare@_call55_0)| Bool )
(declare-var |tuple(compare@_call51_0, compare@_call55_0)| Bool )
(declare-var compare@_call57_0 Bool )
(declare-var compare@_cond3_0 Bool )
(declare-var |tuple(compare@_call57_0, compare@_cond3_0)| Bool )
(declare-var |tuple(compare@_call53_0, compare@_cond3_0)| Bool )
(declare-var compare@_call59_0 Bool )
(declare-var compare@_call61_0 Bool )
(declare-var compare@_cond_0 Bool )
(declare-var compare@infloop_0 Bool )
(declare-var |tuple(compare@_call61_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_call59_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_call57_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_call55_0, compare@_.0_0)| Bool )
(declare-var compare@infloop1_0 Bool )
(declare-var compare@_call63_0 Bool )
(declare-var compare@_call65_0 Bool )
(declare-var compare@_cond_1 Bool )
(declare-var |tuple(compare@_call65_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_call63_0, compare@_.0_0)| Bool )
(declare-var compare@infloop_1 Bool )
(declare-var compare@infloop1_1 Bool )
(declare-var main@%_2_0 (Array Int Int) )
(declare-var main@%_3_0 (Array Int Int) )
(declare-var main@%_4_0 (Array Int Int) )
(declare-var main@%_5_0 (Array Int Int) )
(declare-var main@%_6_0 (Array Int Int) )
(declare-var main@%_7_0 (Array Int Int) )
(declare-var main@%_8_0 (Array Int Int) )
(declare-var main@%_call_0 (Array Int Int) )
(declare-var main@%_10_0 Int )
(declare-var main@%_11_0 Int )
(declare-var main@%_12_0 Int )
(declare-var main@%_13_0 Int )
(declare-var main@%_14_0 Int )
(declare-var main@%_15_0 Int )
(declare-var main@%_16_0 Int )
(declare-var main@%_call8_0 Int )
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
         compare@%_5_0
         compare@%_call_0
         compare@%_3_0
         compare@%_6_0
         compare@%_7_0
         compare@%_2_0
         compare@%_4_0
         compare@%_8_0
         compare@%o1_indexOf_0
         compare@%o2_indexOf_0
         compare@%o1_charAt_0
         compare@%o2_charAt_0
         compare@%o1_countOccurrencesOf_0
         compare@%o2_countOccurrencesOf_0
         compare@%o1_lastIndexOf_0
         compare@%o2_lastIndexOf_0
         compare@%.0_0))
(rule (compare false
         true
         true
         compare@%_5_0
         compare@%_call_0
         compare@%_3_0
         compare@%_6_0
         compare@%_7_0
         compare@%_2_0
         compare@%_4_0
         compare@%_8_0
         compare@%o1_indexOf_0
         compare@%o2_indexOf_0
         compare@%o1_charAt_0
         compare@%o2_charAt_0
         compare@%o1_countOccurrencesOf_0
         compare@%o2_countOccurrencesOf_0
         compare@%o1_lastIndexOf_0
         compare@%o2_lastIndexOf_0
         compare@%.0_0))
(rule (compare false
         false
         false
         compare@%_5_0
         compare@%_call_0
         compare@%_3_0
         compare@%_6_0
         compare@%_7_0
         compare@%_2_0
         compare@%_4_0
         compare@%_8_0
         compare@%o1_indexOf_0
         compare@%o2_indexOf_0
         compare@%o1_charAt_0
         compare@%o2_charAt_0
         compare@%o1_countOccurrencesOf_0
         compare@%o2_countOccurrencesOf_0
         compare@%o1_lastIndexOf_0
         compare@%o2_lastIndexOf_0
         compare@%.0_0))
(rule (compare_1 0
           compare@%_5_0
           compare@%_call_0
           compare@%_3_0
           compare@%_6_0
           compare@%_7_0
           compare@%_2_0
           compare@%_4_0
           compare@%_8_0
           compare@%.0_0
           compare@%o2_charAt_0
           compare@%_call48_0
           compare@%o1_charAt_0
           compare@%o2_lastIndexOf_0
           compare@%o1_lastIndexOf_0
           compare@%o2_indexOf_0
           compare@%o1_indexOf_0
           compare@%o1_countOccurrencesOf_0
           compare@%o2_countOccurrencesOf_0
           compare@%i1.0_0))
(rule (let ((a!1 (and (compare_1 0
                           compare@%_5_0
                           compare@%_call_0
                           compare@%_3_0
                           compare@%_6_0
                           compare@%_7_0
                           compare@%_2_0
                           compare@%_4_0
                           compare@%_8_0
                           compare@%.0_0
                           compare@%o2_charAt_0
                           compare@%_call48_0
                           compare@%o1_charAt_0
                           compare@%o2_lastIndexOf_0
                           compare@%o1_lastIndexOf_0
                           compare@%o2_indexOf_0
                           compare@%o1_indexOf_0
                           compare@%o1_countOccurrencesOf_0
                           compare@%o2_countOccurrencesOf_0
                           compare@%i1.0_0)
                true
                (= compare@%_call8_0 (+ compare@%o1_indexOf_0 (* 4 4)))
                (or (<= compare@%o1_indexOf_0 0) (> compare@%_call8_0 0))
                (> compare@%o1_indexOf_0 0)
                (= compare@%_11_0 (select compare@%_5_0 compare@%_call8_0))
                (=> compare@_13_0 (and compare@_13_0 compare@_1_0))
                (=> (and compare@_13_0 compare@_1_0) (= compare@%_11_0 (- 1)))
                (= compare@%_call9_0 (+ compare@%o2_indexOf_0 (* 4 4)))
                (=> compare@_13_0
                    (or (<= compare@%o2_indexOf_0 0) (> compare@%_call9_0 0)))
                (=> compare@_13_0 (> compare@%o2_indexOf_0 0))
                (=> compare@_13_0
                    (= compare@%_15_0
                       (select compare@%_call_0 compare@%_call9_0)))
                (=> |tuple(compare@_13_0, compare@_17_0)| compare@_13_0)
                (=> |tuple(compare@_1_0, compare@_17_0)| compare@_1_0)
                (=> compare@_17_0
                    (or (and compare@_13_0
                             |tuple(compare@_13_0, compare@_17_0)|)
                        (and compare@_1_0 |tuple(compare@_1_0, compare@_17_0)|)))
                (=> (and compare@_13_0 |tuple(compare@_13_0, compare@_17_0)|)
                    (not (= compare@%_15_0 (- 1))))
                (=> (and compare@_1_0 |tuple(compare@_1_0, compare@_17_0)|)
                    (not (= compare@%_11_0 (- 1))))
                (= compare@%_call11_0 (+ compare@%o1_indexOf_0 (* 4 4)))
                (=> compare@_17_0
                    (or (<= compare@%o1_indexOf_0 0) (> compare@%_call11_0 0)))
                (=> compare@_17_0 (> compare@%o1_indexOf_0 0))
                (=> compare@_17_0
                    (= compare@%_19_0 (select compare@%_5_0 compare@%_call11_0)))
                (= compare@%_call12_0 (+ compare@%o2_indexOf_0 (* 4 4)))
                (=> compare@_17_0
                    (or (<= compare@%o2_indexOf_0 0) (> compare@%_call12_0 0)))
                (=> compare@_17_0 (> compare@%o2_indexOf_0 0))
                (=> compare@_17_0
                    (= compare@%_21_0
                       (select compare@%_call_0 compare@%_call12_0)))
                (=> compare@_i1.0_0 (and compare@_i1.0_0 compare@_17_0))
                compare@_i1.0_0
                (=> (and compare@_i1.0_0 compare@_17_0)
                    (= compare@%_19_0 compare@%_21_0))
                (= compare@%i1.0_1 0)
                (=> (and compare@_i1.0_0 compare@_17_0)
                    (= compare@%i1.0_2 compare@%i1.0_1)))))
  (=> a!1
      (compare_1 1
                 compare@%_5_0
                 compare@%_call_0
                 compare@%_3_0
                 compare@%_6_0
                 compare@%_7_0
                 compare@%_2_0
                 compare@%_4_0
                 compare@%_8_0
                 compare@%.0_0
                 compare@%o2_charAt_0
                 compare@%_call48_0
                 compare@%o1_charAt_0
                 compare@%o2_lastIndexOf_0
                 compare@%o1_lastIndexOf_0
                 compare@%o2_indexOf_0
                 compare@%o1_indexOf_0
                 compare@%o1_countOccurrencesOf_0
                 compare@%o2_countOccurrencesOf_0
                 compare@%i1.0_2))))
(rule (let ((a!1 (and (compare_1 0
                           compare@%_5_0
                           compare@%_call_0
                           compare@%_3_0
                           compare@%_6_0
                           compare@%_7_0
                           compare@%_2_0
                           compare@%_4_0
                           compare@%_8_0
                           compare@%.0_0
                           compare@%o2_charAt_0
                           compare@%_call48_0
                           compare@%o1_charAt_0
                           compare@%o2_lastIndexOf_0
                           compare@%o1_lastIndexOf_0
                           compare@%o2_indexOf_0
                           compare@%o1_indexOf_0
                           compare@%o1_countOccurrencesOf_0
                           compare@%o2_countOccurrencesOf_0
                           compare@%i1.0_0)
                true
                (= compare@%_call8_0 (+ compare@%o1_indexOf_0 (* 4 4)))
                (or (<= compare@%o1_indexOf_0 0) (> compare@%_call8_0 0))
                (> compare@%o1_indexOf_0 0)
                (= compare@%_11_0 (select compare@%_5_0 compare@%_call8_0))
                (=> compare@_13_0 (and compare@_13_0 compare@_1_0))
                (=> (and compare@_13_0 compare@_1_0) (= compare@%_11_0 (- 1)))
                (= compare@%_call9_0 (+ compare@%o2_indexOf_0 (* 4 4)))
                (=> compare@_13_0
                    (or (<= compare@%o2_indexOf_0 0) (> compare@%_call9_0 0)))
                (=> compare@_13_0 (> compare@%o2_indexOf_0 0))
                (=> compare@_13_0
                    (= compare@%_15_0
                       (select compare@%_call_0 compare@%_call9_0)))
                (=> compare@_65_0 (and compare@_65_0 compare@_13_0))
                (=> (and compare@_65_0 compare@_13_0) (= compare@%_15_0 (- 1)))
                (= compare@%_call35_0
                   (+ compare@%o1_countOccurrencesOf_0 (* 3 4)))
                (=> compare@_65_0
                    (or (<= compare@%o1_countOccurrencesOf_0 0)
                        (> compare@%_call35_0 0)))
                (=> compare@_65_0 (> compare@%o1_countOccurrencesOf_0 0))
                (=> compare@_65_0
                    (= compare@%_call36_0
                       (select compare@%_7_0 compare@%_call35_0)))
                (= compare@%_call37_0
                   (+ compare@%o2_countOccurrencesOf_0 (* 3 4)))
                (=> compare@_65_0
                    (or (<= compare@%o2_countOccurrencesOf_0 0)
                        (> compare@%_call37_0 0)))
                (=> compare@_65_0 (> compare@%o2_countOccurrencesOf_0 0))
                (=> compare@_65_0
                    (= compare@%_call38_0
                       (select compare@%_2_0 compare@%_call37_0)))
                (=> compare@_71_0 (and compare@_71_0 compare@_65_0))
                (=> (and compare@_71_0 compare@_65_0)
                    (not (> compare@%_call36_0 1)))
                (=> compare@_73_0 (and compare@_73_0 compare@_71_0))
                (=> (and compare@_73_0 compare@_71_0) (= compare@%_call36_0 1))
                (= compare@%_call41_0 (+ compare@%o1_indexOf_0 (* 2 4)))
                (=> compare@_73_0
                    (or (<= compare@%o1_indexOf_0 0) (> compare@%_call41_0 0)))
                (=> compare@_73_0 (> compare@%o1_indexOf_0 0))
                (=> compare@_73_0
                    (= compare@%_75_0 (select compare@%_5_0 compare@%_call41_0)))
                (=> |tuple(compare@_73_0, compare@_77_0)| compare@_73_0)
                (=> |tuple(compare@_65_0, compare@_77_0)| compare@_65_0)
                (=> compare@_77_0
                    (or (and compare@_73_0
                             |tuple(compare@_73_0, compare@_77_0)|)
                        (and compare@_65_0
                             |tuple(compare@_65_0, compare@_77_0)|)))
                (=> (and compare@_73_0 |tuple(compare@_73_0, compare@_77_0)|)
                    (not (= compare@%_75_0 (- 1))))
                (=> (and compare@_65_0 |tuple(compare@_65_0, compare@_77_0)|)
                    (> compare@%_call36_0 1))
                (=> compare@_79_0 (and compare@_79_0 compare@_77_0))
                (=> (and compare@_79_0 compare@_77_0)
                    (not (> compare@%_call38_0 1)))
                (=> compare@_81_0 (and compare@_81_0 compare@_79_0))
                (=> (and compare@_81_0 compare@_79_0) (= compare@%_call38_0 1))
                (= compare@%_call45_0 (+ compare@%o2_indexOf_0 (* 2 4)))
                (=> compare@_81_0
                    (or (<= compare@%o2_indexOf_0 0) (> compare@%_call45_0 0)))
                (=> compare@_81_0 (> compare@%o2_indexOf_0 0))
                (=> compare@_81_0
                    (= compare@%_83_0
                       (select compare@%_call_0 compare@%_call45_0)))
                (=> |tuple(compare@_81_0, compare@_85_0)| compare@_81_0)
                (=> |tuple(compare@_77_0, compare@_85_0)| compare@_77_0)
                (=> compare@_85_0
                    (or (and compare@_81_0
                             |tuple(compare@_81_0, compare@_85_0)|)
                        (and compare@_77_0
                             |tuple(compare@_77_0, compare@_85_0)|)))
                (=> (and compare@_81_0 |tuple(compare@_81_0, compare@_85_0)|)
                    (not (= compare@%_83_0 (- 1))))
                (=> (and compare@_77_0 |tuple(compare@_77_0, compare@_85_0)|)
                    (> compare@%_call38_0 1))
                (= compare@%_call47_0 (+ compare@%o1_lastIndexOf_0 (* 3 4)))
                (=> compare@_85_0
                    (or (<= compare@%o1_lastIndexOf_0 0)
                        (> compare@%_call47_0 0)))
                (=> compare@_85_0 (> compare@%o1_lastIndexOf_0 0))
                (=> compare@_85_0
                    (= compare@%_call48_1
                       (select compare@%_4_0 compare@%_call47_0)))
                (= compare@%_call49_0 (+ compare@%o2_lastIndexOf_0 (* 3 4)))
                (=> compare@_85_0
                    (or (<= compare@%o2_lastIndexOf_0 0)
                        (> compare@%_call49_0 0)))
                (=> compare@_85_0 (> compare@%o2_lastIndexOf_0 0))
                (=> compare@_85_0
                    (= compare@%_89_0 (select compare@%_8_0 compare@%_call49_0)))
                (=> compare@_cond2_0 (and compare@_cond2_0 compare@_85_0))
                compare@_cond2_0
                (=> (and compare@_cond2_0 compare@_85_0)
                    (= compare@%_call48_1 compare@%_89_0)))))
  (=> a!1
      (compare_1 2
                 compare@%_5_0
                 compare@%_call_0
                 compare@%_3_0
                 compare@%_6_0
                 compare@%_7_0
                 compare@%_2_0
                 compare@%_4_0
                 compare@%_8_0
                 compare@%.0_0
                 compare@%o2_charAt_0
                 compare@%_call48_1
                 compare@%o1_charAt_0
                 compare@%o2_lastIndexOf_0
                 compare@%o1_lastIndexOf_0
                 compare@%o2_indexOf_0
                 compare@%o1_indexOf_0
                 compare@%o1_countOccurrencesOf_0
                 compare@%o2_countOccurrencesOf_0
                 compare@%i1.0_0))))
(rule (let ((a!1 (and (compare_1 0
                           compare@%_5_0
                           compare@%_call_0
                           compare@%_3_0
                           compare@%_6_0
                           compare@%_7_0
                           compare@%_2_0
                           compare@%_4_0
                           compare@%_8_0
                           compare@%.0_0
                           compare@%o2_charAt_0
                           compare@%_call48_0
                           compare@%o1_charAt_0
                           compare@%o2_lastIndexOf_0
                           compare@%o1_lastIndexOf_0
                           compare@%o2_indexOf_0
                           compare@%o1_indexOf_0
                           compare@%o1_countOccurrencesOf_0
                           compare@%o2_countOccurrencesOf_0
                           compare@%i1.0_0)
                true
                (= compare@%_call8_0 (+ compare@%o1_indexOf_0 (* 4 4)))
                (or (<= compare@%o1_indexOf_0 0) (> compare@%_call8_0 0))
                (> compare@%o1_indexOf_0 0)
                (= compare@%_11_0 (select compare@%_5_0 compare@%_call8_0))
                (=> compare@_13_0 (and compare@_13_0 compare@_1_0))
                (=> (and compare@_13_0 compare@_1_0) (= compare@%_11_0 (- 1)))
                (= compare@%_call9_0 (+ compare@%o2_indexOf_0 (* 4 4)))
                (=> compare@_13_0
                    (or (<= compare@%o2_indexOf_0 0) (> compare@%_call9_0 0)))
                (=> compare@_13_0 (> compare@%o2_indexOf_0 0))
                (=> compare@_13_0
                    (= compare@%_15_0
                       (select compare@%_call_0 compare@%_call9_0)))
                (=> |tuple(compare@_13_0, compare@_17_0)| compare@_13_0)
                (=> |tuple(compare@_1_0, compare@_17_0)| compare@_1_0)
                (=> compare@_17_0
                    (or (and compare@_13_0
                             |tuple(compare@_13_0, compare@_17_0)|)
                        (and compare@_1_0 |tuple(compare@_1_0, compare@_17_0)|)))
                (=> (and compare@_13_0 |tuple(compare@_13_0, compare@_17_0)|)
                    (not (= compare@%_15_0 (- 1))))
                (=> (and compare@_1_0 |tuple(compare@_1_0, compare@_17_0)|)
                    (not (= compare@%_11_0 (- 1))))
                (= compare@%_call11_0 (+ compare@%o1_indexOf_0 (* 4 4)))
                (=> compare@_17_0
                    (or (<= compare@%o1_indexOf_0 0) (> compare@%_call11_0 0)))
                (=> compare@_17_0 (> compare@%o1_indexOf_0 0))
                (=> compare@_17_0
                    (= compare@%_19_0 (select compare@%_5_0 compare@%_call11_0)))
                (= compare@%_call12_0 (+ compare@%o2_indexOf_0 (* 4 4)))
                (=> compare@_17_0
                    (or (<= compare@%o2_indexOf_0 0) (> compare@%_call12_0 0)))
                (=> compare@_17_0 (> compare@%o2_indexOf_0 0))
                (=> compare@_17_0
                    (= compare@%_21_0
                       (select compare@%_call_0 compare@%_call12_0)))
                (=> compare@_59_0 (and compare@_59_0 compare@_17_0))
                (=> (and compare@_59_0 compare@_17_0)
                    (not (= compare@%_19_0 compare@%_21_0)))
                (= compare@%_call32_0 (+ compare@%o1_indexOf_0 (* 4 4)))
                (=> compare@_59_0
                    (or (<= compare@%o1_indexOf_0 0) (> compare@%_call32_0 0)))
                (=> compare@_59_0 (> compare@%o1_indexOf_0 0))
                (=> compare@_59_0
                    (= compare@%_61_0 (select compare@%_5_0 compare@%_call32_0)))
                (= compare@%_call33_0 (+ compare@%o2_indexOf_0 (* 4 4)))
                (=> compare@_59_0
                    (or (<= compare@%o2_indexOf_0 0) (> compare@%_call33_0 0)))
                (=> compare@_59_0 (> compare@%o2_indexOf_0 0))
                (=> compare@_59_0
                    (= compare@%_63_0
                       (select compare@%_call_0 compare@%_call33_0)))
                (=> compare@_65_0 (and compare@_65_0 compare@_13_0))
                (=> (and compare@_65_0 compare@_13_0) (= compare@%_15_0 (- 1)))
                (= compare@%_call35_0
                   (+ compare@%o1_countOccurrencesOf_0 (* 3 4)))
                (=> compare@_65_0
                    (or (<= compare@%o1_countOccurrencesOf_0 0)
                        (> compare@%_call35_0 0)))
                (=> compare@_65_0 (> compare@%o1_countOccurrencesOf_0 0))
                (=> compare@_65_0
                    (= compare@%_call36_0
                       (select compare@%_7_0 compare@%_call35_0)))
                (= compare@%_call37_0
                   (+ compare@%o2_countOccurrencesOf_0 (* 3 4)))
                (=> compare@_65_0
                    (or (<= compare@%o2_countOccurrencesOf_0 0)
                        (> compare@%_call37_0 0)))
                (=> compare@_65_0 (> compare@%o2_countOccurrencesOf_0 0))
                (=> compare@_65_0
                    (= compare@%_call38_0
                       (select compare@%_2_0 compare@%_call37_0)))
                (=> compare@_71_0 (and compare@_71_0 compare@_65_0))
                (=> (and compare@_71_0 compare@_65_0)
                    (not (> compare@%_call36_0 1)))
                (=> compare@_73_0 (and compare@_73_0 compare@_71_0))
                (=> (and compare@_73_0 compare@_71_0) (= compare@%_call36_0 1))
                (= compare@%_call41_0 (+ compare@%o1_indexOf_0 (* 2 4)))
                (=> compare@_73_0
                    (or (<= compare@%o1_indexOf_0 0) (> compare@%_call41_0 0)))
                (=> compare@_73_0 (> compare@%o1_indexOf_0 0))
                (=> compare@_73_0
                    (= compare@%_75_0 (select compare@%_5_0 compare@%_call41_0)))
                (=> |tuple(compare@_73_0, compare@_122_0)| compare@_73_0)
                (=> |tuple(compare@_71_0, compare@_122_0)| compare@_71_0)
                (=> compare@_122_0
                    (or (and compare@_73_0
                             |tuple(compare@_73_0, compare@_122_0)|)
                        (and compare@_71_0
                             |tuple(compare@_71_0, compare@_122_0)|)))
                (=> (and compare@_73_0 |tuple(compare@_73_0, compare@_122_0)|)
                    (= compare@%_75_0 (- 1)))
                (=> (and compare@_71_0 |tuple(compare@_71_0, compare@_122_0)|)
                    (not (= compare@%_call36_0 1)))
                (=> compare@_124_0 (and compare@_124_0 compare@_122_0))
                (=> (and compare@_124_0 compare@_122_0)
                    (not (> compare@%_call38_0 1)))
                (=> compare@_126_0 (and compare@_126_0 compare@_124_0))
                (=> (and compare@_126_0 compare@_124_0)
                    (= compare@%_call38_0 1))
                (= compare@%_call71_0 (+ compare@%o2_indexOf_0 (* 2 4)))
                (=> compare@_126_0
                    (or (<= compare@%o2_indexOf_0 0) (> compare@%_call71_0 0)))
                (=> compare@_126_0 (> compare@%o2_indexOf_0 0))
                (=> compare@_126_0
                    (= compare@%_128_0
                       (select compare@%_call_0 compare@%_call71_0)))
                (=> |tuple(compare@_126_0, compare@_br73_0)| compare@_126_0)
                (=> |tuple(compare@_124_0, compare@_br73_0)| compare@_124_0)
                (=> compare@_br73_0
                    (or (and compare@_126_0
                             |tuple(compare@_126_0, compare@_br73_0)|)
                        (and compare@_124_0
                             |tuple(compare@_124_0, compare@_br73_0)|)))
                (=> (and compare@_126_0
                         |tuple(compare@_126_0, compare@_br73_0)|)
                    (= compare@%_128_0 (- 1)))
                (=> (and compare@_124_0
                         |tuple(compare@_124_0, compare@_br73_0)|)
                    (not (= compare@%_call38_0 1)))
                (=> |tuple(compare@_73_0, compare@_77_0)| compare@_73_0)
                (=> |tuple(compare@_65_0, compare@_77_0)| compare@_65_0)
                (=> compare@_77_0
                    (or (and compare@_73_0
                             |tuple(compare@_73_0, compare@_77_0)|)
                        (and compare@_65_0
                             |tuple(compare@_65_0, compare@_77_0)|)))
                (=> (and compare@_73_0 |tuple(compare@_73_0, compare@_77_0)|)
                    (not (= compare@%_75_0 (- 1))))
                (=> (and compare@_65_0 |tuple(compare@_65_0, compare@_77_0)|)
                    (> compare@%_call36_0 1))
                (=> compare@_79_0 (and compare@_79_0 compare@_77_0))
                (=> (and compare@_79_0 compare@_77_0)
                    (not (> compare@%_call38_0 1)))
                (=> compare@_81_0 (and compare@_81_0 compare@_79_0))
                (=> (and compare@_81_0 compare@_79_0) (= compare@%_call38_0 1))
                (= compare@%_call45_0 (+ compare@%o2_indexOf_0 (* 2 4)))
                (=> compare@_81_0
                    (or (<= compare@%o2_indexOf_0 0) (> compare@%_call45_0 0)))
                (=> compare@_81_0 (> compare@%o2_indexOf_0 0))
                (=> compare@_81_0
                    (= compare@%_83_0
                       (select compare@%_call_0 compare@%_call45_0)))
                (=> |tuple(compare@_81_0, compare@_85_0)| compare@_81_0)
                (=> |tuple(compare@_77_0, compare@_85_0)| compare@_77_0)
                (=> compare@_85_0
                    (or (and compare@_81_0
                             |tuple(compare@_81_0, compare@_85_0)|)
                        (and compare@_77_0
                             |tuple(compare@_77_0, compare@_85_0)|)))
                (=> (and compare@_81_0 |tuple(compare@_81_0, compare@_85_0)|)
                    (not (= compare@%_83_0 (- 1))))
                (=> (and compare@_77_0 |tuple(compare@_77_0, compare@_85_0)|)
                    (> compare@%_call38_0 1))
                (= compare@%_call47_0 (+ compare@%o1_lastIndexOf_0 (* 3 4)))
                (=> compare@_85_0
                    (or (<= compare@%o1_lastIndexOf_0 0)
                        (> compare@%_call47_0 0)))
                (=> compare@_85_0 (> compare@%o1_lastIndexOf_0 0))
                (=> compare@_85_0
                    (= compare@%_call48_1
                       (select compare@%_4_0 compare@%_call47_0)))
                (= compare@%_call49_0 (+ compare@%o2_lastIndexOf_0 (* 3 4)))
                (=> compare@_85_0
                    (or (<= compare@%o2_lastIndexOf_0 0)
                        (> compare@%_call49_0 0)))
                (=> compare@_85_0 (> compare@%o2_lastIndexOf_0 0))
                (=> compare@_85_0
                    (= compare@%_89_0 (select compare@%_8_0 compare@%_call49_0)))
                (=> compare@_118_0 (and compare@_118_0 compare@_85_0))
                (=> (and compare@_118_0 compare@_85_0)
                    (not (= compare@%_call48_1 compare@%_89_0)))
                (= compare@%_call67_0 (+ compare@%o2_lastIndexOf_0 (* 3 4)))
                (=> compare@_118_0
                    (or (<= compare@%o2_lastIndexOf_0 0)
                        (> compare@%_call67_0 0)))
                (=> compare@_118_0 (> compare@%o2_lastIndexOf_0 0))
                (=> compare@_118_0
                    (= compare@%_120_0
                       (select compare@%_8_0 compare@%_call67_0)))
                (=> |tuple(compare@_126_0, compare@_.0_0)| compare@_126_0)
                (=> |tuple(compare@_122_0, compare@_.0_0)| compare@_122_0)
                (=> |tuple(compare@_81_0, compare@_.0_0)| compare@_81_0)
                (=> |tuple(compare@_79_0, compare@_.0_0)| compare@_79_0)
                (=> compare@_.0_0
                    (or (and compare@_.0_0 compare@_br73_0)
                        (and compare@_126_0
                             |tuple(compare@_126_0, compare@_.0_0)|)
                        (and compare@_122_0
                             |tuple(compare@_122_0, compare@_.0_0)|)
                        (and compare@_.0_0 compare@_118_0)
                        (and compare@_81_0
                             |tuple(compare@_81_0, compare@_.0_0)|)
                        (and compare@_79_0
                             |tuple(compare@_79_0, compare@_.0_0)|)
                        (and compare@_.0_0 compare@_59_0)))
                (= compare@%.0_1 0)
                (=> (and compare@_126_0 |tuple(compare@_126_0, compare@_.0_0)|)
                    (not (= compare@%_128_0 (- 1))))
                (= compare@%.0_2 (- 1))
                (=> (and compare@_122_0 |tuple(compare@_122_0, compare@_.0_0)|)
                    (> compare@%_call38_0 1))
                (= compare@%.0_3 (- 1))
                (= compare@%.0_4 (- compare@%_call48_1 compare@%_120_0))
                (=> (and compare@_81_0 |tuple(compare@_81_0, compare@_.0_0)|)
                    (= compare@%_83_0 (- 1)))
                (= compare@%.0_5 1)
                (=> (and compare@_79_0 |tuple(compare@_79_0, compare@_.0_0)|)
                    (not (= compare@%_call38_0 1)))
                (= compare@%.0_6 1)
                (= compare@%.0_7 (- compare@%_61_0 compare@%_63_0))
                (=> (and compare@_.0_0 compare@_br73_0)
                    (= compare@%.0_8 compare@%.0_1))
                (=> (and compare@_126_0 |tuple(compare@_126_0, compare@_.0_0)|)
                    (= compare@%.0_8 compare@%.0_2))
                (=> (and compare@_122_0 |tuple(compare@_122_0, compare@_.0_0)|)
                    (= compare@%.0_8 compare@%.0_3))
                (=> (and compare@_.0_0 compare@_118_0)
                    (= compare@%.0_8 compare@%.0_4))
                (=> (and compare@_81_0 |tuple(compare@_81_0, compare@_.0_0)|)
                    (= compare@%.0_8 compare@%.0_5))
                (=> (and compare@_79_0 |tuple(compare@_79_0, compare@_.0_0)|)
                    (= compare@%.0_8 compare@%.0_6))
                (=> (and compare@_.0_0 compare@_59_0)
                    (= compare@%.0_8 compare@%.0_7))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!1
      (compare_1 5
                 compare@%_5_0
                 compare@%_call_0
                 compare@%_3_0
                 compare@%_6_0
                 compare@%_7_0
                 compare@%_2_0
                 compare@%_4_0
                 compare@%_8_0
                 compare@%.0_8
                 compare@%o2_charAt_0
                 compare@%_call48_1
                 compare@%o1_charAt_0
                 compare@%o2_lastIndexOf_0
                 compare@%o1_lastIndexOf_0
                 compare@%o2_indexOf_0
                 compare@%o1_indexOf_0
                 compare@%o1_countOccurrencesOf_0
                 compare@%o2_countOccurrencesOf_0
                 compare@%i1.0_0))))
(rule (let ((a!1 (and (compare_1 1
                           compare@%_5_0
                           compare@%_call_0
                           compare@%_3_0
                           compare@%_6_0
                           compare@%_7_0
                           compare@%_2_0
                           compare@%_4_0
                           compare@%_8_0
                           compare@%.0_0
                           compare@%o2_charAt_0
                           compare@%_call48_0
                           compare@%o1_charAt_0
                           compare@%o2_lastIndexOf_0
                           compare@%o1_lastIndexOf_0
                           compare@%o2_indexOf_0
                           compare@%o1_indexOf_0
                           compare@%o1_countOccurrencesOf_0
                           compare@%o2_countOccurrencesOf_0
                           compare@%i1.0_0)
                true
                (=> compare@_25_0 (and compare@_25_0 compare@_i1.0_0))
                (=> (and compare@_25_0 compare@_i1.0_0) (< compare@%i1.0_0 13))
                (= compare@%_call15_0
                   (+ compare@%o1_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_25_0
                    (or (<= compare@%o1_charAt_0 0) (> compare@%_call15_0 0)))
                (=> compare@_25_0 (> compare@%o1_charAt_0 0))
                (=> compare@_25_0
                    (= compare@%_27_0 (select compare@%_3_0 compare@%_call15_0)))
                (=> compare@_29_0 (and compare@_29_0 compare@_25_0))
                (=> (and compare@_29_0 compare@_25_0)
                    (not (= compare@%_27_0 0)))
                (= compare@%_call17_0
                   (+ compare@%o1_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_29_0
                    (or (<= compare@%o1_charAt_0 0) (> compare@%_call17_0 0)))
                (=> compare@_29_0 (> compare@%o1_charAt_0 0))
                (=> compare@_29_0
                    (= compare@%_31_0 (select compare@%_3_0 compare@%_call17_0)))
                (=> compare@_33_0 (and compare@_33_0 compare@_29_0))
                (=> (and compare@_33_0 compare@_29_0)
                    (not (= compare@%_31_0 4)))
                (= compare@%_call19_0
                   (+ compare@%o2_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_33_0
                    (or (<= compare@%o2_charAt_0 0) (> compare@%_call19_0 0)))
                (=> compare@_33_0 (> compare@%o2_charAt_0 0))
                (=> compare@_33_0
                    (= compare@%_35_0 (select compare@%_6_0 compare@%_call19_0)))
                (=> compare@_37_0 (and compare@_37_0 compare@_33_0))
                (=> (and compare@_37_0 compare@_33_0)
                    (not (= compare@%_35_0 0)))
                (= compare@%_call21_0
                   (+ compare@%o2_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_37_0
                    (or (<= compare@%o2_charAt_0 0) (> compare@%_call21_0 0)))
                (=> compare@_37_0 (> compare@%o2_charAt_0 0))
                (=> compare@_37_0
                    (= compare@%_39_0 (select compare@%_6_0 compare@%_call21_0)))
                (=> |tuple(compare@_37_0, compare@_41_0)| compare@_37_0)
                (=> |tuple(compare@_33_0, compare@_41_0)| compare@_33_0)
                (=> |tuple(compare@_29_0, compare@_41_0)| compare@_29_0)
                (=> |tuple(compare@_25_0, compare@_41_0)| compare@_25_0)
                (=> compare@_41_0
                    (or (and compare@_37_0
                             |tuple(compare@_37_0, compare@_41_0)|)
                        (and compare@_33_0
                             |tuple(compare@_33_0, compare@_41_0)|)
                        (and compare@_29_0
                             |tuple(compare@_29_0, compare@_41_0)|)
                        (and compare@_25_0
                             |tuple(compare@_25_0, compare@_41_0)|)))
                (=> (and compare@_37_0 |tuple(compare@_37_0, compare@_41_0)|)
                    (= compare@%_39_0 4))
                (=> (and compare@_33_0 |tuple(compare@_33_0, compare@_41_0)|)
                    (= compare@%_35_0 0))
                (=> (and compare@_29_0 |tuple(compare@_29_0, compare@_41_0)|)
                    (= compare@%_31_0 4))
                (=> (and compare@_25_0 |tuple(compare@_25_0, compare@_41_0)|)
                    (= compare@%_27_0 0))
                (= compare@%_call23_0
                   (+ compare@%o1_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_41_0
                    (or (<= compare@%o1_charAt_0 0) (> compare@%_call23_0 0)))
                (=> compare@_41_0 (> compare@%o1_charAt_0 0))
                (=> compare@_41_0
                    (= compare@%_43_0 (select compare@%_3_0 compare@%_call23_0)))
                (=> compare@_45_0 (and compare@_45_0 compare@_41_0))
                (=> (and compare@_45_0 compare@_41_0)
                    (not (= compare@%_43_0 0)))
                (= compare@%_call25_0
                   (+ compare@%o1_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_45_0
                    (or (<= compare@%o1_charAt_0 0) (> compare@%_call25_0 0)))
                (=> compare@_45_0 (> compare@%o1_charAt_0 0))
                (=> compare@_45_0
                    (= compare@%_47_0 (select compare@%_3_0 compare@%_call25_0)))
                (=> |tuple(compare@_45_0, compare@_49_0)| compare@_45_0)
                (=> |tuple(compare@_41_0, compare@_49_0)| compare@_41_0)
                (=> compare@_49_0
                    (or (and compare@_45_0
                             |tuple(compare@_45_0, compare@_49_0)|)
                        (and compare@_41_0
                             |tuple(compare@_41_0, compare@_49_0)|)))
                (=> (and compare@_45_0 |tuple(compare@_45_0, compare@_49_0)|)
                    (= compare@%_47_0 4))
                (=> (and compare@_41_0 |tuple(compare@_41_0, compare@_49_0)|)
                    (= compare@%_43_0 0))
                (= compare@%_call27_0
                   (+ compare@%o2_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_49_0
                    (or (<= compare@%o2_charAt_0 0) (> compare@%_call27_0 0)))
                (=> compare@_49_0 (> compare@%o2_charAt_0 0))
                (=> compare@_49_0
                    (= compare@%_51_0 (select compare@%_6_0 compare@%_call27_0)))
                (=> compare@_53_0 (and compare@_53_0 compare@_49_0))
                (=> (and compare@_53_0 compare@_49_0)
                    (not (= compare@%_51_0 0)))
                (= compare@%_call29_0
                   (+ compare@%o2_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_53_0
                    (or (<= compare@%o2_charAt_0 0) (> compare@%_call29_0 0)))
                (=> compare@_53_0 (> compare@%o2_charAt_0 0))
                (=> compare@_53_0
                    (= compare@%_55_0 (select compare@%_6_0 compare@%_call29_0)))
                (=> |tuple(compare@_53_0, compare@_57_0)| compare@_53_0)
                (=> |tuple(compare@_49_0, compare@_57_0)| compare@_49_0)
                (=> compare@_57_0
                    (or (and compare@_53_0
                             |tuple(compare@_53_0, compare@_57_0)|)
                        (and compare@_49_0
                             |tuple(compare@_49_0, compare@_57_0)|)))
                (=> (and compare@_53_0 |tuple(compare@_53_0, compare@_57_0)|)
                    (= compare@%_55_0 4))
                (=> (and compare@_49_0 |tuple(compare@_49_0, compare@_57_0)|)
                    (= compare@%_51_0 0))
                (=> compare@_i1.0_1 (and compare@_i1.0_1 compare@_57_0))
                compare@_i1.0_1
                (= compare@%i1.0_1 (+ compare@%i1.0_0 1))
                (=> (and compare@_i1.0_1 compare@_57_0)
                    (= compare@%i1.0_2 compare@%i1.0_1)))))
  (=> a!1
      (compare_1 1
                 compare@%_5_0
                 compare@%_call_0
                 compare@%_3_0
                 compare@%_6_0
                 compare@%_7_0
                 compare@%_2_0
                 compare@%_4_0
                 compare@%_8_0
                 compare@%.0_0
                 compare@%o2_charAt_0
                 compare@%_call48_0
                 compare@%o1_charAt_0
                 compare@%o2_lastIndexOf_0
                 compare@%o1_lastIndexOf_0
                 compare@%o2_indexOf_0
                 compare@%o1_indexOf_0
                 compare@%o1_countOccurrencesOf_0
                 compare@%o2_countOccurrencesOf_0
                 compare@%i1.0_2))))
(rule (let ((a!1 (and (compare_1 1
                           compare@%_5_0
                           compare@%_call_0
                           compare@%_3_0
                           compare@%_6_0
                           compare@%_7_0
                           compare@%_2_0
                           compare@%_4_0
                           compare@%_8_0
                           compare@%.0_0
                           compare@%o2_charAt_0
                           compare@%_call48_0
                           compare@%o1_charAt_0
                           compare@%o2_lastIndexOf_0
                           compare@%o1_lastIndexOf_0
                           compare@%o2_indexOf_0
                           compare@%o1_indexOf_0
                           compare@%o1_countOccurrencesOf_0
                           compare@%o2_countOccurrencesOf_0
                           compare@%i1.0_0)
                true
                (=> compare@_59_0 (and compare@_59_0 compare@_i1.0_0))
                (=> (and compare@_59_0 compare@_i1.0_0)
                    (not (< compare@%i1.0_0 13)))
                (= compare@%_call32_0 (+ compare@%o1_indexOf_0 (* 4 4)))
                (=> compare@_59_0
                    (or (<= compare@%o1_indexOf_0 0) (> compare@%_call32_0 0)))
                (=> compare@_59_0 (> compare@%o1_indexOf_0 0))
                (=> compare@_59_0
                    (= compare@%_61_0 (select compare@%_5_0 compare@%_call32_0)))
                (= compare@%_call33_0 (+ compare@%o2_indexOf_0 (* 4 4)))
                (=> compare@_59_0
                    (or (<= compare@%o2_indexOf_0 0) (> compare@%_call33_0 0)))
                (=> compare@_59_0 (> compare@%o2_indexOf_0 0))
                (=> compare@_59_0
                    (= compare@%_63_0
                       (select compare@%_call_0 compare@%_call33_0)))
                (=> compare@_25_0 (and compare@_25_0 compare@_i1.0_0))
                (=> (and compare@_25_0 compare@_i1.0_0) (< compare@%i1.0_0 13))
                (= compare@%_call15_0
                   (+ compare@%o1_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_25_0
                    (or (<= compare@%o1_charAt_0 0) (> compare@%_call15_0 0)))
                (=> compare@_25_0 (> compare@%o1_charAt_0 0))
                (=> compare@_25_0
                    (= compare@%_27_0 (select compare@%_3_0 compare@%_call15_0)))
                (=> compare@_29_0 (and compare@_29_0 compare@_25_0))
                (=> (and compare@_29_0 compare@_25_0)
                    (not (= compare@%_27_0 0)))
                (= compare@%_call17_0
                   (+ compare@%o1_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_29_0
                    (or (<= compare@%o1_charAt_0 0) (> compare@%_call17_0 0)))
                (=> compare@_29_0 (> compare@%o1_charAt_0 0))
                (=> compare@_29_0
                    (= compare@%_31_0 (select compare@%_3_0 compare@%_call17_0)))
                (=> compare@_33_0 (and compare@_33_0 compare@_29_0))
                (=> (and compare@_33_0 compare@_29_0)
                    (not (= compare@%_31_0 4)))
                (= compare@%_call19_0
                   (+ compare@%o2_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_33_0
                    (or (<= compare@%o2_charAt_0 0) (> compare@%_call19_0 0)))
                (=> compare@_33_0 (> compare@%o2_charAt_0 0))
                (=> compare@_33_0
                    (= compare@%_35_0 (select compare@%_6_0 compare@%_call19_0)))
                (=> compare@_37_0 (and compare@_37_0 compare@_33_0))
                (=> (and compare@_37_0 compare@_33_0)
                    (not (= compare@%_35_0 0)))
                (= compare@%_call21_0
                   (+ compare@%o2_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_37_0
                    (or (<= compare@%o2_charAt_0 0) (> compare@%_call21_0 0)))
                (=> compare@_37_0 (> compare@%o2_charAt_0 0))
                (=> compare@_37_0
                    (= compare@%_39_0 (select compare@%_6_0 compare@%_call21_0)))
                (=> |tuple(compare@_37_0, compare@_41_0)| compare@_37_0)
                (=> |tuple(compare@_33_0, compare@_41_0)| compare@_33_0)
                (=> |tuple(compare@_29_0, compare@_41_0)| compare@_29_0)
                (=> |tuple(compare@_25_0, compare@_41_0)| compare@_25_0)
                (=> compare@_41_0
                    (or (and compare@_37_0
                             |tuple(compare@_37_0, compare@_41_0)|)
                        (and compare@_33_0
                             |tuple(compare@_33_0, compare@_41_0)|)
                        (and compare@_29_0
                             |tuple(compare@_29_0, compare@_41_0)|)
                        (and compare@_25_0
                             |tuple(compare@_25_0, compare@_41_0)|)))
                (=> (and compare@_37_0 |tuple(compare@_37_0, compare@_41_0)|)
                    (= compare@%_39_0 4))
                (=> (and compare@_33_0 |tuple(compare@_33_0, compare@_41_0)|)
                    (= compare@%_35_0 0))
                (=> (and compare@_29_0 |tuple(compare@_29_0, compare@_41_0)|)
                    (= compare@%_31_0 4))
                (=> (and compare@_25_0 |tuple(compare@_25_0, compare@_41_0)|)
                    (= compare@%_27_0 0))
                (= compare@%_call23_0
                   (+ compare@%o1_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_41_0
                    (or (<= compare@%o1_charAt_0 0) (> compare@%_call23_0 0)))
                (=> compare@_41_0 (> compare@%o1_charAt_0 0))
                (=> compare@_41_0
                    (= compare@%_43_0 (select compare@%_3_0 compare@%_call23_0)))
                (=> compare@_45_0 (and compare@_45_0 compare@_41_0))
                (=> (and compare@_45_0 compare@_41_0)
                    (not (= compare@%_43_0 0)))
                (= compare@%_call25_0
                   (+ compare@%o1_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_45_0
                    (or (<= compare@%o1_charAt_0 0) (> compare@%_call25_0 0)))
                (=> compare@_45_0 (> compare@%o1_charAt_0 0))
                (=> compare@_45_0
                    (= compare@%_47_0 (select compare@%_3_0 compare@%_call25_0)))
                (=> |tuple(compare@_45_0, compare@_49_0)| compare@_45_0)
                (=> |tuple(compare@_41_0, compare@_49_0)| compare@_41_0)
                (=> compare@_49_0
                    (or (and compare@_45_0
                             |tuple(compare@_45_0, compare@_49_0)|)
                        (and compare@_41_0
                             |tuple(compare@_41_0, compare@_49_0)|)))
                (=> (and compare@_45_0 |tuple(compare@_45_0, compare@_49_0)|)
                    (= compare@%_47_0 4))
                (=> (and compare@_41_0 |tuple(compare@_41_0, compare@_49_0)|)
                    (= compare@%_43_0 0))
                (= compare@%_call27_0
                   (+ compare@%o2_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_49_0
                    (or (<= compare@%o2_charAt_0 0) (> compare@%_call27_0 0)))
                (=> compare@_49_0 (> compare@%o2_charAt_0 0))
                (=> compare@_49_0
                    (= compare@%_51_0 (select compare@%_6_0 compare@%_call27_0)))
                (=> compare@_53_0 (and compare@_53_0 compare@_49_0))
                (=> (and compare@_53_0 compare@_49_0)
                    (not (= compare@%_51_0 0)))
                (= compare@%_call29_0
                   (+ compare@%o2_charAt_0 (* compare@%i1.0_0 4)))
                (=> compare@_53_0
                    (or (<= compare@%o2_charAt_0 0) (> compare@%_call29_0 0)))
                (=> compare@_53_0 (> compare@%o2_charAt_0 0))
                (=> compare@_53_0
                    (= compare@%_55_0 (select compare@%_6_0 compare@%_call29_0)))
                (=> |tuple(compare@_53_0, compare@_.0_0)| compare@_53_0)
                (=> |tuple(compare@_45_0, compare@_.0_0)| compare@_45_0)
                (=> |tuple(compare@_37_0, compare@_.0_0)| compare@_37_0)
                (=> compare@_.0_0
                    (or (and compare@_.0_0 compare@_59_0)
                        (and compare@_53_0
                             |tuple(compare@_53_0, compare@_.0_0)|)
                        (and compare@_45_0
                             |tuple(compare@_45_0, compare@_.0_0)|)
                        (and compare@_37_0
                             |tuple(compare@_37_0, compare@_.0_0)|)))
                (= compare@%.0_1 (- compare@%_61_0 compare@%_63_0))
                (=> (and compare@_53_0 |tuple(compare@_53_0, compare@_.0_0)|)
                    (not (= compare@%_55_0 4)))
                (= compare@%.0_2 1)
                (=> (and compare@_45_0 |tuple(compare@_45_0, compare@_.0_0)|)
                    (not (= compare@%_47_0 4)))
                (= compare@%.0_3 (- 1))
                (=> (and compare@_37_0 |tuple(compare@_37_0, compare@_.0_0)|)
                    (not (= compare@%_39_0 4)))
                (= compare@%.0_4 0)
                (=> (and compare@_.0_0 compare@_59_0)
                    (= compare@%.0_5 compare@%.0_1))
                (=> (and compare@_53_0 |tuple(compare@_53_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_2))
                (=> (and compare@_45_0 |tuple(compare@_45_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_3))
                (=> (and compare@_37_0 |tuple(compare@_37_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_4))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!1
      (compare_1 5
                 compare@%_5_0
                 compare@%_call_0
                 compare@%_3_0
                 compare@%_6_0
                 compare@%_7_0
                 compare@%_2_0
                 compare@%_4_0
                 compare@%_8_0
                 compare@%.0_5
                 compare@%o2_charAt_0
                 compare@%_call48_0
                 compare@%o1_charAt_0
                 compare@%o2_lastIndexOf_0
                 compare@%o1_lastIndexOf_0
                 compare@%o2_indexOf_0
                 compare@%o1_indexOf_0
                 compare@%o1_countOccurrencesOf_0
                 compare@%o2_countOccurrencesOf_0
                 compare@%i1.0_0))))
(rule (let ((a!1 (and (compare_1 2
                           compare@%_5_0
                           compare@%_call_0
                           compare@%_3_0
                           compare@%_6_0
                           compare@%_7_0
                           compare@%_2_0
                           compare@%_4_0
                           compare@%_8_0
                           compare@%.0_0
                           compare@%o2_charAt_0
                           compare@%_call48_0
                           compare@%o1_charAt_0
                           compare@%o2_lastIndexOf_0
                           compare@%o1_lastIndexOf_0
                           compare@%o2_indexOf_0
                           compare@%o1_indexOf_0
                           compare@%o1_countOccurrencesOf_0
                           compare@%o2_countOccurrencesOf_0
                           compare@%i1.0_0)
                true
                (=> compare@_call51_0 (and compare@_call51_0 compare@_cond2_0))
                (=> (and compare@_call51_0 compare@_cond2_0)
                    (not (= compare@%_call48_0 0)))
                (=> compare@_call51_0
                    (= compare@%_93_0
                       (select compare@%_3_0 compare@%o1_charAt_0)))
                (=> compare@_call53_0 (and compare@_call53_0 compare@_call51_0))
                (=> (and compare@_call53_0 compare@_call51_0)
                    (not (= compare@%_93_0 2)))
                (=> compare@_call53_0
                    (= compare@%_96_0
                       (select compare@%_3_0 compare@%o1_charAt_0)))
                (=> |tuple(compare@_call53_0, compare@_call55_0)|
                    compare@_call53_0)
                (=> |tuple(compare@_call51_0, compare@_call55_0)|
                    compare@_call51_0)
                (=> compare@_call55_0
                    (or (and compare@_call53_0
                             |tuple(compare@_call53_0, compare@_call55_0)|)
                        (and compare@_call51_0
                             |tuple(compare@_call51_0, compare@_call55_0)|)))
                (=> (and compare@_call53_0
                         |tuple(compare@_call53_0, compare@_call55_0)|)
                    (= compare@%_96_0 3))
                (=> (and compare@_call51_0
                         |tuple(compare@_call51_0, compare@_call55_0)|)
                    (= compare@%_93_0 2))
                (=> compare@_call55_0
                    (= compare@%_99_0
                       (select compare@%_6_0 compare@%o2_charAt_0)))
                (=> compare@_call57_0 (and compare@_call57_0 compare@_call55_0))
                (=> (and compare@_call57_0 compare@_call55_0)
                    (not (= compare@%_99_0 2)))
                (=> compare@_call57_0
                    (= compare@%_102_0
                       (select compare@%_6_0 compare@%o2_charAt_0)))
                (=> |tuple(compare@_call57_0, compare@_cond3_0)|
                    compare@_call57_0)
                (=> |tuple(compare@_call53_0, compare@_cond3_0)|
                    compare@_call53_0)
                (=> compare@_cond3_0
                    (or (and compare@_call57_0
                             |tuple(compare@_call57_0, compare@_cond3_0)|)
                        (and compare@_call53_0
                             |tuple(compare@_call53_0, compare@_cond3_0)|)))
                (=> (and compare@_call57_0
                         |tuple(compare@_call57_0, compare@_cond3_0)|)
                    (not (= compare@%_102_0 3)))
                (=> (and compare@_call53_0
                         |tuple(compare@_call53_0, compare@_cond3_0)|)
                    (not (= compare@%_96_0 3)))
                (=> compare@_call59_0 (and compare@_call59_0 compare@_cond3_0))
                (=> (and compare@_call59_0 compare@_cond3_0)
                    (not (= compare@%_call48_0 0)))
                (=> compare@_call59_0
                    (= compare@%_106_0
                       (select compare@%_3_0 compare@%o1_charAt_0)))
                (=> compare@_call61_0 (and compare@_call61_0 compare@_call59_0))
                (=> (and compare@_call61_0 compare@_call59_0)
                    (not (= compare@%_106_0 2)))
                (=> compare@_call61_0
                    (= compare@%_109_0
                       (select compare@%_3_0 compare@%o1_charAt_0)))
                (=> compare@_cond_0 (and compare@_cond_0 compare@_call61_0))
                compare@_cond_0
                (=> (and compare@_cond_0 compare@_call61_0)
                    (not (= compare@%_109_0 3))))))
  (=> a!1
      (compare_1 3
                 compare@%_5_0
                 compare@%_call_0
                 compare@%_3_0
                 compare@%_6_0
                 compare@%_7_0
                 compare@%_2_0
                 compare@%_4_0
                 compare@%_8_0
                 compare@%.0_0
                 compare@%o2_charAt_0
                 compare@%_call48_0
                 compare@%o1_charAt_0
                 compare@%o2_lastIndexOf_0
                 compare@%o1_lastIndexOf_0
                 compare@%o2_indexOf_0
                 compare@%o1_indexOf_0
                 compare@%o1_countOccurrencesOf_0
                 compare@%o2_countOccurrencesOf_0
                 compare@%i1.0_0))))
(rule (let ((a!1 (and (compare_1 2
                           compare@%_5_0
                           compare@%_call_0
                           compare@%_3_0
                           compare@%_6_0
                           compare@%_7_0
                           compare@%_2_0
                           compare@%_4_0
                           compare@%_8_0
                           compare@%.0_0
                           compare@%o2_charAt_0
                           compare@%_call48_0
                           compare@%o1_charAt_0
                           compare@%o2_lastIndexOf_0
                           compare@%o1_lastIndexOf_0
                           compare@%o2_indexOf_0
                           compare@%o1_indexOf_0
                           compare@%o1_countOccurrencesOf_0
                           compare@%o2_countOccurrencesOf_0
                           compare@%i1.0_0)
                true
                (=> compare@_call51_0 (and compare@_call51_0 compare@_cond2_0))
                (=> (and compare@_call51_0 compare@_cond2_0)
                    (not (= compare@%_call48_0 0)))
                (=> compare@_call51_0
                    (= compare@%_93_0
                       (select compare@%_3_0 compare@%o1_charAt_0)))
                (=> compare@_call53_0 (and compare@_call53_0 compare@_call51_0))
                (=> (and compare@_call53_0 compare@_call51_0)
                    (not (= compare@%_93_0 2)))
                (=> compare@_call53_0
                    (= compare@%_96_0
                       (select compare@%_3_0 compare@%o1_charAt_0)))
                (=> |tuple(compare@_call53_0, compare@_call55_0)|
                    compare@_call53_0)
                (=> |tuple(compare@_call51_0, compare@_call55_0)|
                    compare@_call51_0)
                (=> compare@_call55_0
                    (or (and compare@_call53_0
                             |tuple(compare@_call53_0, compare@_call55_0)|)
                        (and compare@_call51_0
                             |tuple(compare@_call51_0, compare@_call55_0)|)))
                (=> (and compare@_call53_0
                         |tuple(compare@_call53_0, compare@_call55_0)|)
                    (= compare@%_96_0 3))
                (=> (and compare@_call51_0
                         |tuple(compare@_call51_0, compare@_call55_0)|)
                    (= compare@%_93_0 2))
                (=> compare@_call55_0
                    (= compare@%_99_0
                       (select compare@%_6_0 compare@%o2_charAt_0)))
                (=> compare@_call57_0 (and compare@_call57_0 compare@_call55_0))
                (=> (and compare@_call57_0 compare@_call55_0)
                    (not (= compare@%_99_0 2)))
                (=> compare@_call57_0
                    (= compare@%_102_0
                       (select compare@%_6_0 compare@%o2_charAt_0)))
                (=> |tuple(compare@_call57_0, compare@_cond3_0)|
                    compare@_call57_0)
                (=> |tuple(compare@_call53_0, compare@_cond3_0)|
                    compare@_call53_0)
                (=> compare@_cond3_0
                    (or (and compare@_call57_0
                             |tuple(compare@_call57_0, compare@_cond3_0)|)
                        (and compare@_call53_0
                             |tuple(compare@_call53_0, compare@_cond3_0)|)))
                (=> (and compare@_call57_0
                         |tuple(compare@_call57_0, compare@_cond3_0)|)
                    (not (= compare@%_102_0 3)))
                (=> (and compare@_call53_0
                         |tuple(compare@_call53_0, compare@_cond3_0)|)
                    (not (= compare@%_96_0 3)))
                (=> compare@infloop_0 (and compare@infloop_0 compare@_cond3_0))
                compare@infloop_0
                (=> (and compare@infloop_0 compare@_cond3_0)
                    (= compare@%_call48_0 0)))))
  (=> a!1
      (compare_1 4
                 compare@%_5_0
                 compare@%_call_0
                 compare@%_3_0
                 compare@%_6_0
                 compare@%_7_0
                 compare@%_2_0
                 compare@%_4_0
                 compare@%_8_0
                 compare@%.0_0
                 compare@%o2_charAt_0
                 compare@%_call48_0
                 compare@%o1_charAt_0
                 compare@%o2_lastIndexOf_0
                 compare@%o1_lastIndexOf_0
                 compare@%o2_indexOf_0
                 compare@%o1_indexOf_0
                 compare@%o1_countOccurrencesOf_0
                 compare@%o2_countOccurrencesOf_0
                 compare@%i1.0_0))))
(rule (let ((a!1 (and (compare_1 2
                           compare@%_5_0
                           compare@%_call_0
                           compare@%_3_0
                           compare@%_6_0
                           compare@%_7_0
                           compare@%_2_0
                           compare@%_4_0
                           compare@%_8_0
                           compare@%.0_0
                           compare@%o2_charAt_0
                           compare@%_call48_0
                           compare@%o1_charAt_0
                           compare@%o2_lastIndexOf_0
                           compare@%o1_lastIndexOf_0
                           compare@%o2_indexOf_0
                           compare@%o1_indexOf_0
                           compare@%o1_countOccurrencesOf_0
                           compare@%o2_countOccurrencesOf_0
                           compare@%i1.0_0)
                true
                (=> compare@_call51_0 (and compare@_call51_0 compare@_cond2_0))
                (=> (and compare@_call51_0 compare@_cond2_0)
                    (not (= compare@%_call48_0 0)))
                (=> compare@_call51_0
                    (= compare@%_93_0
                       (select compare@%_3_0 compare@%o1_charAt_0)))
                (=> compare@_call53_0 (and compare@_call53_0 compare@_call51_0))
                (=> (and compare@_call53_0 compare@_call51_0)
                    (not (= compare@%_93_0 2)))
                (=> compare@_call53_0
                    (= compare@%_96_0
                       (select compare@%_3_0 compare@%o1_charAt_0)))
                (=> |tuple(compare@_call53_0, compare@_call55_0)|
                    compare@_call53_0)
                (=> |tuple(compare@_call51_0, compare@_call55_0)|
                    compare@_call51_0)
                (=> compare@_call55_0
                    (or (and compare@_call53_0
                             |tuple(compare@_call53_0, compare@_call55_0)|)
                        (and compare@_call51_0
                             |tuple(compare@_call51_0, compare@_call55_0)|)))
                (=> (and compare@_call53_0
                         |tuple(compare@_call53_0, compare@_call55_0)|)
                    (= compare@%_96_0 3))
                (=> (and compare@_call51_0
                         |tuple(compare@_call51_0, compare@_call55_0)|)
                    (= compare@%_93_0 2))
                (=> compare@_call55_0
                    (= compare@%_99_0
                       (select compare@%_6_0 compare@%o2_charAt_0)))
                (=> compare@_call57_0 (and compare@_call57_0 compare@_call55_0))
                (=> (and compare@_call57_0 compare@_call55_0)
                    (not (= compare@%_99_0 2)))
                (=> compare@_call57_0
                    (= compare@%_102_0
                       (select compare@%_6_0 compare@%o2_charAt_0)))
                (=> |tuple(compare@_call57_0, compare@_cond3_0)|
                    compare@_call57_0)
                (=> |tuple(compare@_call53_0, compare@_cond3_0)|
                    compare@_call53_0)
                (=> compare@_cond3_0
                    (or (and compare@_call57_0
                             |tuple(compare@_call57_0, compare@_cond3_0)|)
                        (and compare@_call53_0
                             |tuple(compare@_call53_0, compare@_cond3_0)|)))
                (=> (and compare@_call57_0
                         |tuple(compare@_call57_0, compare@_cond3_0)|)
                    (not (= compare@%_102_0 3)))
                (=> (and compare@_call53_0
                         |tuple(compare@_call53_0, compare@_cond3_0)|)
                    (not (= compare@%_96_0 3)))
                (=> compare@_call59_0 (and compare@_call59_0 compare@_cond3_0))
                (=> (and compare@_call59_0 compare@_cond3_0)
                    (not (= compare@%_call48_0 0)))
                (=> compare@_call59_0
                    (= compare@%_106_0
                       (select compare@%_3_0 compare@%o1_charAt_0)))
                (=> compare@_call61_0 (and compare@_call61_0 compare@_call59_0))
                (=> (and compare@_call61_0 compare@_call59_0)
                    (not (= compare@%_106_0 2)))
                (=> compare@_call61_0
                    (= compare@%_109_0
                       (select compare@%_3_0 compare@%o1_charAt_0)))
                (=> |tuple(compare@_call61_0, compare@_.0_0)| compare@_call61_0)
                (=> |tuple(compare@_call59_0, compare@_.0_0)| compare@_call59_0)
                (=> |tuple(compare@_call57_0, compare@_.0_0)| compare@_call57_0)
                (=> |tuple(compare@_call55_0, compare@_.0_0)| compare@_call55_0)
                (=> compare@_.0_0
                    (or (and compare@_call61_0
                             |tuple(compare@_call61_0, compare@_.0_0)|)
                        (and compare@_call59_0
                             |tuple(compare@_call59_0, compare@_.0_0)|)
                        (and compare@_call57_0
                             |tuple(compare@_call57_0, compare@_.0_0)|)
                        (and compare@_call55_0
                             |tuple(compare@_call55_0, compare@_.0_0)|)))
                (=> (and compare@_call61_0
                         |tuple(compare@_call61_0, compare@_.0_0)|)
                    (= compare@%_109_0 3))
                (= compare@%.0_1 (- 1))
                (=> (and compare@_call59_0
                         |tuple(compare@_call59_0, compare@_.0_0)|)
                    (= compare@%_106_0 2))
                (= compare@%.0_2 (- 1))
                (=> (and compare@_call57_0
                         |tuple(compare@_call57_0, compare@_.0_0)|)
                    (= compare@%_102_0 3))
                (= compare@%.0_3 0)
                (=> (and compare@_call55_0
                         |tuple(compare@_call55_0, compare@_.0_0)|)
                    (= compare@%_99_0 2))
                (= compare@%.0_4 0)
                (=> (and compare@_call61_0
                         |tuple(compare@_call61_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_1))
                (=> (and compare@_call59_0
                         |tuple(compare@_call59_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_2))
                (=> (and compare@_call57_0
                         |tuple(compare@_call57_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_3))
                (=> (and compare@_call55_0
                         |tuple(compare@_call55_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_4))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!1
      (compare_1 5
                 compare@%_5_0
                 compare@%_call_0
                 compare@%_3_0
                 compare@%_6_0
                 compare@%_7_0
                 compare@%_2_0
                 compare@%_4_0
                 compare@%_8_0
                 compare@%.0_5
                 compare@%o2_charAt_0
                 compare@%_call48_0
                 compare@%o1_charAt_0
                 compare@%o2_lastIndexOf_0
                 compare@%o1_lastIndexOf_0
                 compare@%o2_indexOf_0
                 compare@%o1_indexOf_0
                 compare@%o1_countOccurrencesOf_0
                 compare@%o2_countOccurrencesOf_0
                 compare@%i1.0_0))))
(rule (=> (and (compare_1 2
                    compare@%_5_0
                    compare@%_call_0
                    compare@%_3_0
                    compare@%_6_0
                    compare@%_7_0
                    compare@%_2_0
                    compare@%_4_0
                    compare@%_8_0
                    compare@%.0_0
                    compare@%o2_charAt_0
                    compare@%_call48_0
                    compare@%o1_charAt_0
                    compare@%o2_lastIndexOf_0
                    compare@%o1_lastIndexOf_0
                    compare@%o2_indexOf_0
                    compare@%o1_indexOf_0
                    compare@%o1_countOccurrencesOf_0
                    compare@%o2_countOccurrencesOf_0
                    compare@%i1.0_0)
         true
         (=> compare@infloop1_0 (and compare@infloop1_0 compare@_cond2_0))
         compare@infloop1_0
         (=> (and compare@infloop1_0 compare@_cond2_0) (= compare@%_call48_0 0)))
    (compare_1 6
               compare@%_5_0
               compare@%_call_0
               compare@%_3_0
               compare@%_6_0
               compare@%_7_0
               compare@%_2_0
               compare@%_4_0
               compare@%_8_0
               compare@%.0_0
               compare@%o2_charAt_0
               compare@%_call48_0
               compare@%o1_charAt_0
               compare@%o2_lastIndexOf_0
               compare@%o1_lastIndexOf_0
               compare@%o2_indexOf_0
               compare@%o1_indexOf_0
               compare@%o1_countOccurrencesOf_0
               compare@%o2_countOccurrencesOf_0
               compare@%i1.0_0)))
(rule (let ((a!1 (and (compare_1 3
                           compare@%_5_0
                           compare@%_call_0
                           compare@%_3_0
                           compare@%_6_0
                           compare@%_7_0
                           compare@%_2_0
                           compare@%_4_0
                           compare@%_8_0
                           compare@%.0_0
                           compare@%o2_charAt_0
                           compare@%_call48_0
                           compare@%o1_charAt_0
                           compare@%o2_lastIndexOf_0
                           compare@%o1_lastIndexOf_0
                           compare@%o2_indexOf_0
                           compare@%o1_indexOf_0
                           compare@%o1_countOccurrencesOf_0
                           compare@%o2_countOccurrencesOf_0
                           compare@%i1.0_0)
                true
                (=> compare@_call63_0 (and compare@_call63_0 compare@_cond_0))
                (=> (and compare@_call63_0 compare@_cond_0)
                    (not (= compare@%_call48_0 0)))
                (=> compare@_call63_0
                    (= compare@%_113_0
                       (select compare@%_6_0 compare@%o2_charAt_0)))
                (=> compare@_call65_0 (and compare@_call65_0 compare@_call63_0))
                (=> (and compare@_call65_0 compare@_call63_0)
                    (not (= compare@%_113_0 2)))
                (=> compare@_call65_0
                    (= compare@%_116_0
                       (select compare@%_6_0 compare@%o2_charAt_0)))
                (=> compare@_cond2_0 (and compare@_cond2_0 compare@_call65_0))
                compare@_cond2_0
                (=> (and compare@_cond2_0 compare@_call65_0)
                    (not (= compare@%_116_0 3))))))
  (=> a!1
      (compare_1 2
                 compare@%_5_0
                 compare@%_call_0
                 compare@%_3_0
                 compare@%_6_0
                 compare@%_7_0
                 compare@%_2_0
                 compare@%_4_0
                 compare@%_8_0
                 compare@%.0_0
                 compare@%o2_charAt_0
                 compare@%_call48_0
                 compare@%o1_charAt_0
                 compare@%o2_lastIndexOf_0
                 compare@%o1_lastIndexOf_0
                 compare@%o2_indexOf_0
                 compare@%o1_indexOf_0
                 compare@%o1_countOccurrencesOf_0
                 compare@%o2_countOccurrencesOf_0
                 compare@%i1.0_0))))
(rule (let ((a!1 (compare_1 3
                      compare@%_5_0
                      compare@%_call_0
                      compare@%_3_0
                      compare@%_6_0
                      compare@%_7_0
                      compare@%_2_0
                      compare@%_4_0
                      compare@%_8_0
                      compare@%.0_0
                      compare@%o2_charAt_0
                      compare@%_call48_0
                      compare@%o1_charAt_0
                      compare@%o2_lastIndexOf_0
                      compare@%o1_lastIndexOf_0
                      compare@%o2_indexOf_0
                      compare@%o1_indexOf_0
                      compare@%o1_countOccurrencesOf_0
                      compare@%o2_countOccurrencesOf_0
                      compare@%i1.0_0)))
  (=> (and a!1
           true
           (=> compare@_cond_1 (and compare@_cond_1 compare@_cond_0))
           compare@_cond_1
           (=> (and compare@_cond_1 compare@_cond_0) (= compare@%_call48_0 0)))
      a!1)))
(rule (let ((a!1 (and (compare_1 3
                           compare@%_5_0
                           compare@%_call_0
                           compare@%_3_0
                           compare@%_6_0
                           compare@%_7_0
                           compare@%_2_0
                           compare@%_4_0
                           compare@%_8_0
                           compare@%.0_0
                           compare@%o2_charAt_0
                           compare@%_call48_0
                           compare@%o1_charAt_0
                           compare@%o2_lastIndexOf_0
                           compare@%o1_lastIndexOf_0
                           compare@%o2_indexOf_0
                           compare@%o1_indexOf_0
                           compare@%o1_countOccurrencesOf_0
                           compare@%o2_countOccurrencesOf_0
                           compare@%i1.0_0)
                true
                (=> compare@_call63_0 (and compare@_call63_0 compare@_cond_0))
                (=> (and compare@_call63_0 compare@_cond_0)
                    (not (= compare@%_call48_0 0)))
                (=> compare@_call63_0
                    (= compare@%_113_0
                       (select compare@%_6_0 compare@%o2_charAt_0)))
                (=> compare@_call65_0 (and compare@_call65_0 compare@_call63_0))
                (=> (and compare@_call65_0 compare@_call63_0)
                    (not (= compare@%_113_0 2)))
                (=> compare@_call65_0
                    (= compare@%_116_0
                       (select compare@%_6_0 compare@%o2_charAt_0)))
                (=> |tuple(compare@_call65_0, compare@_.0_0)| compare@_call65_0)
                (=> |tuple(compare@_call63_0, compare@_.0_0)| compare@_call63_0)
                (=> compare@_.0_0
                    (or (and compare@_call65_0
                             |tuple(compare@_call65_0, compare@_.0_0)|)
                        (and compare@_call63_0
                             |tuple(compare@_call63_0, compare@_.0_0)|)))
                (=> (and compare@_call65_0
                         |tuple(compare@_call65_0, compare@_.0_0)|)
                    (= compare@%_116_0 3))
                (= compare@%.0_1 1)
                (=> (and compare@_call63_0
                         |tuple(compare@_call63_0, compare@_.0_0)|)
                    (= compare@%_113_0 2))
                (= compare@%.0_2 1)
                (=> (and compare@_call65_0
                         |tuple(compare@_call65_0, compare@_.0_0)|)
                    (= compare@%.0_3 compare@%.0_1))
                (=> (and compare@_call63_0
                         |tuple(compare@_call63_0, compare@_.0_0)|)
                    (= compare@%.0_3 compare@%.0_2))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!1
      (compare_1 5
                 compare@%_5_0
                 compare@%_call_0
                 compare@%_3_0
                 compare@%_6_0
                 compare@%_7_0
                 compare@%_2_0
                 compare@%_4_0
                 compare@%_8_0
                 compare@%.0_3
                 compare@%o2_charAt_0
                 compare@%_call48_0
                 compare@%o1_charAt_0
                 compare@%o2_lastIndexOf_0
                 compare@%o1_lastIndexOf_0
                 compare@%o2_indexOf_0
                 compare@%o1_indexOf_0
                 compare@%o1_countOccurrencesOf_0
                 compare@%o2_countOccurrencesOf_0
                 compare@%i1.0_0))))
(rule (let ((a!1 (compare_1 4
                      compare@%_5_0
                      compare@%_call_0
                      compare@%_3_0
                      compare@%_6_0
                      compare@%_7_0
                      compare@%_2_0
                      compare@%_4_0
                      compare@%_8_0
                      compare@%.0_0
                      compare@%o2_charAt_0
                      compare@%_call48_0
                      compare@%o1_charAt_0
                      compare@%o2_lastIndexOf_0
                      compare@%o1_lastIndexOf_0
                      compare@%o2_indexOf_0
                      compare@%o1_indexOf_0
                      compare@%o1_countOccurrencesOf_0
                      compare@%o2_countOccurrencesOf_0
                      compare@%i1.0_0)))
  (=> (and a!1
           true
           (=> compare@infloop_1 (and compare@infloop_1 compare@infloop_0))
           compare@infloop_1)
      a!1)))
(rule (let ((a!1 (compare_1 6
                      compare@%_5_0
                      compare@%_call_0
                      compare@%_3_0
                      compare@%_6_0
                      compare@%_7_0
                      compare@%_2_0
                      compare@%_4_0
                      compare@%_8_0
                      compare@%.0_0
                      compare@%o2_charAt_0
                      compare@%_call48_0
                      compare@%o1_charAt_0
                      compare@%o2_lastIndexOf_0
                      compare@%o1_lastIndexOf_0
                      compare@%o2_indexOf_0
                      compare@%o1_indexOf_0
                      compare@%o1_countOccurrencesOf_0
                      compare@%o2_countOccurrencesOf_0
                      compare@%i1.0_0)))
  (=> (and a!1
           true
           (=> compare@infloop1_1 (and compare@infloop1_1 compare@infloop1_0))
           compare@infloop1_1)
      a!1)))
(rule (=> (compare_1 5
               compare@%_5_0
               compare@%_call_0
               compare@%_3_0
               compare@%_6_0
               compare@%_7_0
               compare@%_2_0
               compare@%_4_0
               compare@%_8_0
               compare@%.0_0
               compare@%o2_charAt_0
               compare@%_call48_0
               compare@%o1_charAt_0
               compare@%o2_lastIndexOf_0
               compare@%o1_lastIndexOf_0
               compare@%o2_indexOf_0
               compare@%o1_indexOf_0
               compare@%o1_countOccurrencesOf_0
               compare@%o2_countOccurrencesOf_0
               compare@%i1.0_0)
    (compare true
             false
             false
             compare@%_5_0
             compare@%_call_0
             compare@%_3_0
             compare@%_6_0
             compare@%_7_0
             compare@%_2_0
             compare@%_4_0
             compare@%_8_0
             compare@%o1_indexOf_0
             compare@%o2_indexOf_0
             compare@%o1_charAt_0
             compare@%o2_charAt_0
             compare@%o1_countOccurrencesOf_0
             compare@%o2_countOccurrencesOf_0
             compare@%o1_lastIndexOf_0
             compare@%o2_lastIndexOf_0
             compare@%.0_0)))
(rule (main_1 0))
(rule (=> (and (main_1 0)
         true
         (compare true
                  false
                  false
                  main@%_5_0
                  main@%_call_0
                  main@%_3_0
                  main@%_6_0
                  main@%_7_0
                  main@%_2_0
                  main@%_4_0
                  main@%_8_0
                  main@%_10_0
                  main@%_11_0
                  main@%_12_0
                  main@%_13_0
                  main@%_14_0
                  main@%_15_0
                  main@%_16_0
                  main@%_call8_0
                  main@%_br_0)
         (=> main@.split_0 (and main@.split_0 main@_1_0))
         main@.split_0)
    (main_1 1)))
