# Built-in Functions

TeddyLisp comes with a few built-in functions. The list of built-ins are as follows:

## Arithmetic

### Addition (+)

The addition operator (+) produces the sum of numeric operands.

#### Syntax

```lisp
(print (+ 1 2))
;; Expected result: 3
```

### Subtraction (-)

The subtraction operator (-) produces the difference of numeric operands.

#### Syntax

```lisp
(print (- 7 6))
;; Expected result: 1
```

### Multiplication (\*)

The multiplication operator (\*) produces the product of numeric operands.

#### Syntax

```lisp
(print (* 2 2))
;; Expected result: 4
```

### Division (/)

The division operator (/), produces the quotient of numeric operands.

#### Syntax

```lisp
(print (/ 10 2))
;; Expected result: 5
```

### Modulus (%)

The modulus operator (%) produces the remainder of the division of two numeric operands.

#### Syntax

```lisp
(print (% 10 2))
;; Expected result: 0
```

## Variables and functions

### Let

The let function defines a variable and assigns it a value.

#### Syntax

```lisp
(let x "Hello World")
(print x)
;; Expected result: "Hello World"
```

#### Note

Because everything in TeddyLisp is an expression, the let function has to return a value.
In this case it will be the value of the variable after it has been assigned a value.
This would make the following code valid.

```lisp
(print (let x "Hello World"))
;; Expected result: "Hello World"
```

### Set

The set function sets the value of an already defined variable to a new value.

#### Syntax

```lisp
(let x "Not hello world")
(set x "Hello World")
(print x)
;; Expected result: "Hello World"
```

### Defun

The defun function defines a function. The first argument is the name of the function.
The second argument is a list of arguments that the function will take. The last argument
will be the body of the function. The body of the function will be a sequence of
expressions. The result of the last expression will be the return value of the function.
A function that does not contain any expressions will be considered invalid and throw an
error when evaluated.

#### Syntax

```lisp
(defun print-sum (x y)
  (let sum 0)
  (set sum (+ x y))
  (print sum)
)

(print-sum 1 2)
;; Expected result: 3
```

## Logic

### If

The if function takes a condition and a list of expressions. If the condition is true,
the list of expressions will be evaluated in order. If the condition is false, the list
of expressions will not be evaluated.

#### Syntax

```lisp
(if true (print "True"))
;; Expected result: "True"
```

### Equals (eq)

The `eq` function compares two values and returns true if they are equal.

#### Syntax

```lisp
(print (eq 1 1))
;; Expected result: true
```

### Not Equals (neq)

The `neq` function compares two values and returns true if they are **not** equal.

#### Syntax

```lisp
(print (neq 1 2))
;; Expected result: true
```

### And (and)

The `and` function compares two values and returns true if they are both truthy.

#### Syntax

```lisp
(print (and true true))
;; Expected result: true
```

## Miscellaneous

### Print

The print function prints the value of the argument to the console.

#### Syntax

```lisp
(print "Hello World")
;; Expected result: "Hello World"
```
