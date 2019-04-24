;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ch1_ex5) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define treeSize 500)

(define (makeTree treeSize)
  (overlay/xy (circle (/ treeSize 8) "solid" "green")
              (/ treeSize 13) (/ treeSize 10)
              (rectangle (/ treeSize 10) (/ treeSize 2) "solid" "brown")))

(makeTree treeSize)