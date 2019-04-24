;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ch1_ex8) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define mySquare (rectangle 50 50 "solid" "green"))
(define tallRectangle (rectangle 50 100 "solid" "green"))
(define wideRectangle (rectangle 100 50 "solid" "green"))

(define (proportion image)
  (cond
    [(= (image-height image) (image-width image)) "square"]
    [(> (image-height image) (image-width image)) "tall"]
    [else "wide"]))

(proportion mySquare)
(proportion tallRectangle)
(proportion wideRectangle)
