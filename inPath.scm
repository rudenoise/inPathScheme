(define	(isDir? path)
  (string=?
    ""
    (path-strip-directory path)))

(define (filesToPaths files path)
  (if (null? files)
    '()
    (cons
      (path-normalize
				(string-append
					path
					(car files)))
      (filesToPaths
				(cdr files)
				path))))

(define (subPaths path)
  (filesToPaths
		(directory-files path)
		path))

(define (filesFromPaths paths files)
  (if (null? paths)
    files
    (if (isDir? (car paths))
      (filesFromPaths
        (append
          (subPaths (car paths))
          (cdr paths))
        files)
      (filesFromPaths
        (cdr paths)
        (cons
          (car paths)
          files)))))
