;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex25) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (image-classify img)
  (cond
    [(> (image-height img) (image-width img)) "tall"]
    [(= (image-height img) (image-width img)) "square"]
    [(< (image-height img) (image-width img)) "wide"]))

(image-classify (rectangle 10 10 "solid" "red"))
(image-classify (rectangle 20 10 "solid" "red"))
(image-classify (rectangle 10 20 "solid" "red"))
    