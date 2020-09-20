(declare-rel Inv (Int Int Int))
(declare-rel End ())
(declare-rel RelInit (Int Int Int))
(declare-rel RelBad (Int Int Int))
(declare-var a Int)
(declare-var b Int)
(declare-var c Int)
(declare-var ap Int)
(declare-var cp Int)
(declare-fun rel (Int Int) Int)
(rule (=> (and (< (rel a 0) (rel a 1)) (> (rel b 0) (rel b 1))) (RelInit a b c)))
(rule (=> (and (= c 0) (< a b) (> a 0))
    (Inv a b c)))
(rule (=> (and (Inv a b c)
            (or (and (= ap (+ 1 a))
                    (< a b)
                    (= cp (+ c (* a a))))
               (and (>= a b)
                    (= ap a)
                    (= cp c))
                    )) (Inv ap b cp)))
(rule (=> (and (Inv a b c)
         (>= a b))
    End))
    (rule (=> (<= (rel c 0) (rel c 1)) (RelBad a b c)))

; predicates
(declare-rel c0_gt_c1 (Int Int Int))
 (rule (=> (> (rel c 0) (rel c 1)) (c0_gt_c1 a b c)))
(declare-rel c0_eq_c1 (Int Int Int))
 (rule (=> (= (rel c 0) (rel c 1)) (c0_eq_c1 a b c)))
(declare-rel a0_lt_a1 (Int Int Int))
 (rule (=> (< (rel a 0) (rel a 1)) (a0_lt_a1 a b c)))
(declare-rel a0_eq_a1 (Int Int Int))
 (rule (=> (= (rel a 0) (rel a 1)) (a0_eq_a1 a b c)))
(declare-rel b0_gt_b1 (Int Int Int))
 (rule (=> (> (rel b 0) (rel b 1)) (b0_gt_b1 a b c)))
(declare-rel a_lt_b (Int Int Int))
 (rule (=> (< a b) (a_lt_b a b c)))
(declare-rel a_gt_0 (Int Int Int))
 (rule (=> (> a 0) (a_gt_0 a b c)))
(query End)

;invariant
;And(b0<b1,
;    Or(c0=c1, c0>c1),
;    Or(a0!=a1, c0>c1, b0>1),
;    Or(a1>b1, c0>c1, b0>1),
;    Or(a1>=b1, a0<a1),
;    Or(c0!=c1, a0<a1, b0>1),
;    Or(a0<b0, c0>c1))