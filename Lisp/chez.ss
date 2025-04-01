; 函数f 由如下的规则定义:如果n<3 ，那么f(n)=n, 如果n>=3， 那么f(n)= f(n- 1)+ 2f(n-2)+3f(n-3)。
; 请写一个采用递归和迭代计算过程计算f的过程. ; f(0)=0, f(1)=1, f(2)=2
; f(3)= f(2)+2f(1)+3f(0) 
; f(4)= f(3)+2f(2)+3f(1)
; f(n)= f(n-1)+2f(n-2)+3f(n-3)

(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))


(define (f n)
    (f-iter 2 1 0 2 n))

(define (f-iter a b c i n)
    (if (= i n)
        c
        (f-iter (+ a (* 2 b) (* 3 c))   ; new a
                a                       ; new b
                b                       ; new c
                (+ i 1)
                n)))  

(define (pascal row col)
  (cond
    ((> col row) (error "unvalid col value"))
    ((or (= row 0) (= row col)) 1)
    (else  (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))))

