;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex27) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define averageAttendance 120)
(define averageTicketPrice 5.0)
(define changeInAttendance 15)
(define changeInTicketPrice)
(define fixedCost 180)
(define variableCost 0.04)

(define (attendees ticketPrice)
  (- averageAttendance (* (- ticketPrice averageTicketPrice) (/ changeInAttendance changeInTicketPrice))))

(define (revenue ticketPrice)
  (* ticketPrice (attendees ticketPrice)))

(define (cost ticketPrice)
  (+ fixedCost (* variableCost (attendees ticketPrice))))

(define (profit ticketPrice)
  (- (revenue ticketPrice)
     (cost ticketPrice)))