(declare-rel Inv (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(declare-rel RelInit (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(declare-rel RelBad (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(declare-rel End ())
(declare-var len1 Int)
(declare-var len2 Int)
(declare-var o1 (Array Int Int))
(declare-var o2 (Array Int Int))
(declare-var flag1 Bool)
(declare-var i Int)
(declare-var ret Int)
(declare-var exit Bool)
(declare-var len1p Int)
(declare-var len2p Int)
(declare-var o1p (Array Int Int))
(declare-var o2p (Array Int Int))
(declare-var flag1p Bool)
(declare-var ip Int)
(declare-var retp Int)
(declare-var exitp Bool)
(declare-fun rel1 (Int Int) Int)
(declare-fun rel2 ((Array Int Int) Int) (Array Int Int))
(declare-fun rel3 (Bool Int) Bool)


;relational Init/Pre
(rule (=> (and (= (rel2 o2 0) (rel2 o1 1)) (= (rel2 o1 0) (rel2 o1 2)) (= (rel2 o2 1) (rel2 o2 2))
                (= (rel1 len1 0) (rel1 len1 2))
                (= (rel1 len2 1) (rel1 len2 2))
                (= (rel1 len2 0) (rel1 len1 1))) (RelInit len1 len2 o1 o2 flag1 i ret exit)))

;non-relational Init
(rule (=> (and
               (= i 0)
               (= ret 0)
               (not exit)
               (> len1 0)
               (> len2 0)
               ;flag1;<------------------------------------------------------ remove this <------------------------------------------------------
               )
    (Inv len1 len2 o1 o2 flag1 i ret exit)))

;non-relational TR
(rule (=> (and (Inv len1 len2 o1 o2 flag1 i ret exit)
            (or    (and (= len1 len1p) (= len2 len2p) (= o1 o1p) (= o2 o2p) (not exit) (= flag1 flag1p) (= ip i) (distinct len1 len2) (= retp (ite (> 0 (- len1 len2)) 1 -1)) exitp)

                    (and(= len1 len1p) (= len2 len2p) (= o1 o1p) (= o2 o2p) (not exit) (= flag1 flag1p) (= ip i) (= len1 len2) (>= i len1) (= retp ret) exitp)

                    ;(and(= len1 len1p) (= len2 len2p) (= o1 o1p) (= o2 o2p) (not exit) (= 0 ret) (= len1 len2) exitp (< i len1) (or (not flag1) (>= (+ 1 i) len1)) (= ip (+ 1 i))
                    ;    (distinct (select o1 i) (select o2 i)) (= flag1 flag1p) (= retp (ite (> 0 (- (select o1 i) (select o2 i))) 1 -1)))

                    (and(= len1 len1p) (= len2 len2p) (= o1 o1p) (= o2 o2p) (not exit) (distinct 0 ret) (= len1 len2) (not exitp) (< i len1) (or (not flag1) (>= (+ 1 i) len1)) (= ip (+ 1 i))
                        (= flag1 flag1p) (= retp ret))

                    (and(= len1 len1p) (= len2 len2p) (= o1 o1p) (= o2 o2p) (not exit) (= len1 len2) (not exitp) (< i len1) (or (not flag1) (>= (+ 1 i) len1)) (= ip (+ 1 i))
                        (= (select o1 i) (select o2 i)) (= flag1 flag1p) (= retp ret))

                    (and(= len1 len1p) (= len2 len2p) (= o1 o1p) (= o2 o2p) (not exit) (= 0 ret) (= len1 len2) exitp (< i len1) flag1 (< (+ 1 i) len1) (= ip (+ 2 i))
                    (= (select o1 i) (select o2 i))
                    (distinct (select o1 (+ 1 i)) (select o2 (+ 1 i))) (= flag1 flag1p) (= retp (ite (> 0 (- (select o1 (+ i 1)) (select o2 (+ i 1)))) 1 -1)))

                    (and(= len1 len1p) (= len2 len2p) (= o1 o1p) (= o2 o2p) (not exit)  (= 0 ret) (= len1 len2) exitp (< i len1) flag1 (< (+ 1 i) len1) (= ip (+ 2 i))
                    (distinct (select o1 i) (select o2 i)) (= flag1 flag1p) (= retp (ite (> 0 (- (select o1 i) (select o2 i))) 1 -1)))

                    (and(= len1 len1p) (= len2 len2p) (= o1 o1p) (= o2 o2p) (not exit) (= len1 len2) (not exitp) (< i len1) flag1 (< (+ 1 i) len1) (= ip (+ 2 i))
                    (= (select o1 (+ 1 i)) (select o2 (+ 1 i))) (= (select o1 i) (select o2 i)) (= flag1 flag1p) (= retp ret))

                    (and(= len1 len1p) (= len2 len2p) (= o1 o1p) (= o2 o2p) (not exit) (distinct 0 ret) (= len1 len2) (not exitp) (< i len1) flag1 (< (+ 1 i) len1) (= ip (+ 2 i))
                    (= flag1 flag1p) (= retp ret))

                    (and exit exitp (= len1 len1p) (= len2 len2p) (= o1 o1p) (= o2 o2p) (= flag1 flag1p) (= ip i) (= retp ret))
            ))
            (Inv len1p len2p o1p o2p flag1p ip retp exitp)))

;non-relational exit
(rule (=> (and (Inv len1 len2 o1 o2 flag1 i ret exit)
         exit)
    End))

;relational Bad (property negation)
    (rule (=> (and (> (rel1 ret 0) 0) (> (rel1 ret 1) 0) (<= (rel1 ret 2) 0)) (RelBad len1 len2 o1 o2 flag1 i ret exit)))

; predicates

(declare-rel len1_eq_len2 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= len1 len2) (len1_eq_len2 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel abs_exit (Int Int (Array Int Int) (Array Int Int) Bool  Int Int Bool))
(rule (=> exit (abs_exit len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel o1_0_eq_o1_2 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= (rel2 o1 0) (rel2 o1 2)) (o1_0_eq_o1_2 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel o2_0_eq_o1_1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= (rel2 o2 0) (rel2 o1 1)) (o2_0_eq_o1_1 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel o2_1_eq_o2_2 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
 (rule (=> (= (rel2 o2 1) (rel2 o2 2)) (o2_1_eq_o2_2 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel len1_0_eq_len1_2 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= (rel1 len1 0) (rel1 len1 2)) (len1_0_eq_len1_2 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel len2_0_eq_len1_1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= (rel1 len2 0) (rel1 len1 1)) (len2_0_eq_len1_1 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel len2_1_eq_len2_2 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= (rel1 len2 1) (rel1 len2 2)) (len2_1_eq_len2_2 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel abs_flag1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> flag1 (abs_flag1 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel i_lt_len (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (< i len1) (i_lt_len len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel i_0_eq_i_1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= (rel1 i 0) (rel1 i 1)) (i_0_eq_i_1 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel i_0_eq_i_2 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= (rel1 i 0) (rel1 i 2)) (i_0_eq_i_2 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel i_0_eq_i_1_1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= (rel1 i 0) (- (rel1 i 1) 1)) (i_0_eq_i_1_1 len1 len2 o1 o2 flag1 i ret exit)))

 (declare-rel i_1_eq_i_0_1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
 (rule (=> (= (rel1 i 1) (- (rel1 i 0) 1)) (i_1_eq_i_0_1 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel i_0_eq_i_2_1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= (rel1 i 0) (- (rel1 i 2) 1)) (i_0_eq_i_2_1 len1 len2 o1 o2 flag1 i ret exit)))

 (declare-rel i_2_eq_i_0_1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
 (rule (=> (= (rel1 i 2) (- (rel1 i 0) 1)) (i_2_eq_i_0_1 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel i_1_eq_i_2_1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= (rel1 i 1) (- (rel1 i 2) 1)) (i_0_eq_i_2_1 len1 len2 o1 o2 flag1 i ret exit)))

 (declare-rel i_2_eq_i_1_1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
 (rule (=> (= (rel1 i 2) (- (rel1 i 1) 1)) (i_2_eq_i_1_1 len1 len2 o1 o2 flag1 i ret exit)))

 (declare-rel o1_i_eq_o2_i (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
 (rule (=> (= (select o1 i) (select o2 i)) (o1_i_eq_o2_i len1 len2 o1 o2 flag1 i ret exit)))

 (declare-rel o1_i_1_eq_o2_i_1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
 (rule (=> (= (select o1 (+ 1 i)) (select o2 (+ 1 i))) (o1_i_1_eq_o2_i_1 len1 len2 o1 o2 flag1 i ret exit)))


(declare-rel ret_eq_0 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= 0 ret) (ret_eq_0 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel ret_eq_1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= 1 ret) (ret_eq_1 len1 len2 o1 o2 flag1 i ret exit)))

(declare-rel ret_eq_-1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
(rule (=> (= -1 ret) (ret_eq_-1 len1 len2 o1 o2 flag1 i ret exit)))



(query End)




;(declare-rel ret0_eq_-ret1 (Int Int (Array Int Int) (Array Int Int) Bool Int Int Bool))
;(rule (=> (= (rel1 ret 0) (* -1 (rel1 ret 1))) (ret0_eq_-ret1 len1 len2 o1 o2 flag1 i ret exit)))