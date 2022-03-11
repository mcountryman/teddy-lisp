;; Fizz buzz will print the word fizz if the number is divisible by 3, buzz if the number 
;; is divisible by 5, and fizzbuzz if the number is divisible by both 3 and 5.  The program
;; should print the ouput of each number from 1 to 100.

(defun fizz-buzz (val)
  (let divisible-by-five (eq (% val 5) 0)
  (let divisible-by-three (eq (% val 3) 0)

  (if (and divisible-by-five divisible-by-three) 
    (print "fizzbuzz")
    (if divisible-by-five (print "buzz")
      (if divisible-by-three 
        (print "fizz") 
        (print val))
    )
  )
)

(defun loop(to, function)
  (let i 0)
  (if (< i to)
    function(i)
  )
)

(loop 100 fizz-buzz)