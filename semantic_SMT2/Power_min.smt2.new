(declare-rel Inv (Int Int Int Int Bool))
(declare-rel End ())
(declare-rel RelInit (Int Int Int Int Bool))
(declare-rel RelBad (Int Int Int Int Bool))
(declare-var x Int)
(declare-var y Int)
(declare-var z Int)
(declare-var h Int)
(declare-var end Bool)
(declare-var xp Int)
(declare-var yp Int)
(declare-var zp Int)
(declare-var hp Int)
(declare-var endp Bool)
(declare-fun rel (Int Int) Int)

(rule (=> (and (= (rel h 0) 0) (= (rel h 1) 1) (= (rel x 0) (rel x 1))) (RelInit x y z h end)))
(rule (=> (and (> x 0)
         (= y 0)
         (= z (ite (= h 0) (* 2 x) x))
         (not end))
    (Inv x y z h end)))
(rule (=> (and (Inv x y z h end) 
                    (= h hp)
                    (= x xp)
            (or (and
                     (> z 0)
                     (not endp)
                     (not end)
                     (= zp (- z 1))
                     (= yp (+ x y)))
               (and
                     (= z 0)
                     (not end)
                     endp
                     (= zp z)
                     (= yp (ite (= h 0) y (* 2 y))))
               (and 
                     (= z zp)
                     end
                     endp
                     (= yp y)
                    ))) 
          (Inv xp yp zp hp endp)))
(rule (=> (and (Inv x y z h end)
         end )
    End))
    (rule (=> (distinct (rel y 0) (rel y 1)) (RelBad x y z h end)))

; predicates

(declare-rel x0_gt_0 (Int Int Int Int Bool))
(rule (=> (> (rel x 0) 0) (x0_gt_0 x y z h end)))

;(declare-rel x_gt_0 (Int Int Int Int Bool))
; (rule (=> (> x 0) (x_gt_0 x y z h end)))

(declare-rel abs_h (Int Int Int Int Bool))
 (rule (=> (= 0 h) (abs_h x y z h end)))

;(declare-rel z0_eq_z1 (Int Int Int Int Bool))
; (rule (=> (= (rel z 0) (rel z 1)) (z0_eq_z1 x y z h end)))

;(declare-rel y_gteq_0 (Int Int Int Int Bool))
; (rule (=> (>= y 0) (y_gteq_0 x y z h end)))

;(declare-rel z0_eq_2z1 (Int Int Int Int Bool))
 ;(rule (=> (= (rel z 0) (* 2 (rel z 1))) (z0_eq_2z1 x y z h end)))

;(declare-rel z1_eq_2z0 (Int Int Int Int Bool))
; (rule (=> (= (rel z 1) (* 2 (rel z 0))) (z1_eq_2z0 x y z h end)))

;(declare-rel z0_eq_2z1_1 (Int Int Int Int Bool))
 ;(rule (=> (= (rel z 0) (- (* 2 (rel z 1)) 1)) (z0_eq_2z1_1 x y z h end)))

;(declare-rel z1_eq_2z0_1 (Int Int Int Int Bool))
; (rule (=> (= (rel z 1) (- (* 2 (rel z 0)) 1)) (z1_eq_2z0_1 x y z h end)))

;(declare-rel y0_eq_2y1 (Int Int Int Int Bool))
; (rule (=> (= (rel y 0) (* 2 (rel y 1))) (y0_eq_2y1 x y z h end)))

;(declare-rel y1_eq_2y0 (Int Int Int Int Bool))
; (rule (=> (= (rel y 1) (* 2 (rel y 0))) (y1_eq_2y0 x y z h end)))

;(declare-rel y0_eq_2y1_x (Int Int Int Int Bool))
; (rule (=> (= (rel y 0) (+ (* 2 (rel y 1)) (rel x 1))) (y0_eq_2y1_x x y z h end)))

;(declare-rel y1_eq_2y0_x (Int Int Int Int Bool))
; (rule (=> (= (rel y 1) (+ (* 2 (rel y 0)) (rel x 0))) (y1_eq_2y0_x x y z h end)))

(declare-rel z_gt_0 (Int Int Int Int Bool))
 (rule (=> (> z 0) (z_gt_0 x y z h end)))

;(declare-rel z_eq_0 (Int Int Int Int Bool))
; (rule (=> (= z 0) (z_eq_0 x y z h end)))

(declare-rel y0_eq_y1 (Int Int Int Int Bool))
 (rule (=> (= (rel y 0) (rel y 1)) (y0_eq_y1 x y z h end)))

(declare-rel abs_end (Int Int Int Int Bool))
 (rule (=> end (abs_end x y z h end)))

(declare-rel x0_eq_x1 (Int Int Int Int Bool))
 (rule (=> (= (rel x 0) (rel x 1)) (x0_eq_x1 x y z h end)))



(query End)