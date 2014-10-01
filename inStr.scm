(define (inStr? sub str)
  (let ((subLen (string-length sub)) (strLen (string-length str)))
    (if (not (>= strLen subLen))
      #f
      (if (not (string=? sub (substring str 0 subLen)))
        (inStr? sub (substring str 1 strLen))
        #t))))
