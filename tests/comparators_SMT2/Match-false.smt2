(set-info :original "Match-false.pp.ll")
(set-info :authors "SeaHorn v.0.1.0-rc3")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel compare (Bool Bool Bool Int Int Int Int Int Int Int ))
(declare-rel compare_1 (Int Int Int Int Int Int Int Int ))
(declare-rel main_1 (Int ))
(declare-var compare@%.0_4 Int )
(declare-var compare@%o1_score_0 Int )
(declare-var compare@%o2_score_0 Int )
(declare-var compare@%o1_seq1start_0 Int )
(declare-var compare@%o2_seq1start_0 Int )
(declare-var compare@%o1_seq2start_0 Int )
(declare-var compare@%o2_seq2start_0 Int )
(declare-var compare@%.0_0 Int )
(declare-var compare@_call_0 Bool )
(declare-var compare@_3_0 Bool )
(declare-var compare@_7_0 Bool )
(declare-var compare@_9_0 Bool )
(declare-var compare@_br2_0 Bool )
(declare-var |tuple(compare@_9_0, compare@_br2_0)| Bool )
(declare-var |tuple(compare@_7_0, compare@_br2_0)| Bool )
(declare-var compare@_.0_0 Bool )
(declare-var |tuple(compare@_9_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_3_0, compare@_.0_0)| Bool )
(declare-var |tuple(compare@_call_0, compare@_.0_0)| Bool )
(declare-var compare@%.0_1 Int )
(declare-var compare@%.0_2 Int )
(declare-var compare@%.0_3 Int )
(declare-var compare@%.0_5 Int )
(declare-var compare@.split_0 Bool )
(declare-var main@%_2_0 Int )
(declare-var main@%_3_0 Int )
(declare-var main@%_4_0 Int )
(declare-var main@%_5_0 Int )
(declare-var main@%_6_0 Int )
(declare-var main@%_7_0 Int )
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
         compare@%o1_score_0
         compare@%o2_score_0
         compare@%o1_seq1start_0
         compare@%o2_seq1start_0
         compare@%o1_seq2start_0
         compare@%o2_seq2start_0
         compare@%.0_0))
(rule (compare false
         true
         true
         compare@%o1_score_0
         compare@%o2_score_0
         compare@%o1_seq1start_0
         compare@%o2_seq1start_0
         compare@%o1_seq2start_0
         compare@%o2_seq2start_0
         compare@%.0_0))
(rule (compare false
         false
         false
         compare@%o1_score_0
         compare@%o2_score_0
         compare@%o1_seq1start_0
         compare@%o2_seq1start_0
         compare@%o1_seq2start_0
         compare@%o2_seq2start_0
         compare@%.0_0))
(rule (compare_1 0
           compare@%.0_0
           compare@%o1_seq1start_0
           compare@%o2_seq1start_0
           compare@%o1_seq2start_0
           compare@%o2_seq2start_0
           compare@%o1_score_0
           compare@%o2_score_0))
(rule (let ((a!1 (and (= compare@%o1_score_0 compare@%o2_score_0)
                (< compare@%o1_seq1start_0 compare@%o2_seq1start_0)
                (< compare@%o1_seq2start_0 compare@%o2_seq2start_0)))
      (a!2 (=> (and compare@_9_0 |tuple(compare@_9_0, compare@_.0_0)|)
               (not (and (< compare@%o1_seq1start_0 compare@%o2_seq1start_0)
                         (< compare@%o1_seq2start_0 compare@%o2_seq2start_0))))))
(let ((a!3 (and (compare_1 0
                           compare@%.0_0
                           compare@%o1_seq1start_0
                           compare@%o2_seq1start_0
                           compare@%o1_seq2start_0
                           compare@%o2_seq2start_0
                           compare@%o1_score_0
                           compare@%o2_score_0)
                true
                (=> compare@_3_0 (and compare@_3_0 compare@_call_0))
                (=> (and compare@_3_0 compare@_call_0)
                    (not (> compare@%o1_score_0 compare@%o2_score_0)))
                (=> compare@_7_0 (and compare@_7_0 compare@_3_0))
                (=> (and compare@_7_0 compare@_3_0) (not a!1))
                (=> compare@_9_0 (and compare@_9_0 compare@_7_0))
                (=> (and compare@_9_0 compare@_7_0)
                    (= compare@%o1_score_0 compare@%o2_score_0))
                (=> |tuple(compare@_9_0, compare@_br2_0)| compare@_9_0)
                (=> |tuple(compare@_7_0, compare@_br2_0)| compare@_7_0)
                (=> compare@_br2_0
                    (or (and compare@_9_0 |tuple(compare@_9_0, compare@_br2_0)|)
                        (and compare@_7_0 |tuple(compare@_7_0, compare@_br2_0)|)))
                (=> (and compare@_9_0 |tuple(compare@_9_0, compare@_br2_0)|)
                    (and (< compare@%o1_seq1start_0 compare@%o2_seq1start_0)
                         (< compare@%o1_seq2start_0 compare@%o2_seq2start_0)))
                (=> (and compare@_7_0 |tuple(compare@_7_0, compare@_br2_0)|)
                    (not (= compare@%o1_score_0 compare@%o2_score_0)))
                (=> |tuple(compare@_9_0, compare@_.0_0)| compare@_9_0)
                (=> |tuple(compare@_3_0, compare@_.0_0)| compare@_3_0)
                (=> |tuple(compare@_call_0, compare@_.0_0)| compare@_call_0)
                (=> compare@_.0_0
                    (or (and compare@_.0_0 compare@_br2_0)
                        (and compare@_9_0 |tuple(compare@_9_0, compare@_.0_0)|)
                        (and compare@_3_0 |tuple(compare@_3_0, compare@_.0_0)|)
                        (and compare@_call_0
                             |tuple(compare@_call_0, compare@_.0_0)|)))
                (= compare@%.0_1 1)
                a!2
                (= compare@%.0_2 0)
                (=> (and compare@_3_0 |tuple(compare@_3_0, compare@_.0_0)|) a!1)
                (= compare@%.0_3 (- 1))
                (=> (and compare@_call_0
                         |tuple(compare@_call_0, compare@_.0_0)|)
                    (> compare@%o1_score_0 compare@%o2_score_0))
                (= compare@%.0_4 (- 1))
                (=> (and compare@_.0_0 compare@_br2_0)
                    (= compare@%.0_5 compare@%.0_1))
                (=> (and compare@_9_0 |tuple(compare@_9_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_2))
                (=> (and compare@_3_0 |tuple(compare@_3_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_3))
                (=> (and compare@_call_0
                         |tuple(compare@_call_0, compare@_.0_0)|)
                    (= compare@%.0_5 compare@%.0_4))
                (=> compare@.split_0 (and compare@.split_0 compare@_.0_0))
                compare@.split_0)))
  (=> a!3
      (compare_1 1
                 compare@%.0_5
                 compare@%o1_seq1start_0
                 compare@%o2_seq1start_0
                 compare@%o1_seq2start_0
                 compare@%o2_seq2start_0
                 compare@%o1_score_0
                 compare@%o2_score_0)))))
(rule (=> (compare_1 1
               compare@%.0_0
               compare@%o1_seq1start_0
               compare@%o2_seq1start_0
               compare@%o1_seq2start_0
               compare@%o2_seq2start_0
               compare@%o1_score_0
               compare@%o2_score_0)
    (compare true
             false
             false
             compare@%o1_score_0
             compare@%o2_score_0
             compare@%o1_seq1start_0
             compare@%o2_seq1start_0
             compare@%o1_seq2start_0
             compare@%o2_seq2start_0
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
                  main@%_br_0)
         (=> main@.split_0 (and main@.split_0 main@_call_0))
         main@.split_0)
    (main_1 1)))
