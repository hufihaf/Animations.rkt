;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname AniTriangle) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp") (lib "itunes.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp") (lib "itunes.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp")) #f)))
(define tri1 (triangle 15 "solid" "black"))

(define (bigt tri n)
  (cond
    [(= n 0) tri]
    [else (bigt (above tri (beside tri tri)) (- n 1))]
    ))

(define (draw-triangle n)
  (overlay (bigt tri1 n)
           (empty-scene 1000 1000)))

(define (increase-int n)
  (cond
    [(= n 6) n]
    [else (+ 1 n)]
  ))

(big-bang 0
  [to-draw draw-triangle]
  [on-tick increase-int]
  )
