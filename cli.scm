(define (printMatchingPaths str paths)
  (if (not (null? paths))
    (begin
      (if (inStr? str (car paths))
        (begin
          (print (car paths))
          (newline)))
      (printMatchingPaths str (cdr paths)))))

(define (toOut str path)
  (printMatchingPaths
    str
    (filesFromPaths
      (subPaths path)
      '())))

(cond
  ((= (length (command-line)) 2)
   (toOut
     ""
     (car (cdr(command-line)))))
  ((= (length (command-line)) 3)
   (toOut
     (car (cdr(command-line)))
     (car (cdr (cdr(command-line))))))
  (else
    (print "usage:")
    (newline)
    (print "inPath [string to match] [path]")
    (newline)))
