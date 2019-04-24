;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ch1_ex9) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (in val)
(if (string? val)
    (string-length val)
    (if (image? val)
        (* (image-height val) (image-width val))
        (if (number? val)
            (if (> val 0) (sub1 val) (* val -1))
            (if (boolean=? val #true)
                10
                20)))))

(in "hello")
(in (rectangle 10 10 "solid" "green"))
(in 5)
(in -5)
(in 0)
(in #true)
(in #false)
