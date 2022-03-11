# teddy-lisp

## Introduction

In this project we will be learning how to implement a simple custom subset of the
[Common Lisp Language](https://en.wikipedia.org/wiki/Common_Lisp) in
Javascript.

Our application will be run from the command line. The command line arguments should be
able to take a string that represents the path to the file containing the lisp code. An
example of how this would look is displayed below.

```bash
$ node src/main.js data/fib.lisp
```

> Command line arguments can be extracted from the [`process.argv`](https://nodejs.org/docs/latest/api/process.html#processargv) array.

## The Language

The language it'self is actually pretty simple. It can be described as a series of
function calls where the calls have a funky syntax. For example if we wanted to define a
variable called `x` with a string value `Hello World` we would write:

```lisp
(let x "Hello World")
```

Looking at the above code we can see that the syntax _almost_ looks like a c-like function
call except that instead of having _only_ the arguments in parenthesis we have the name
of the function in the parenthesis as well. On top of that we no longer have to use
commas to delimit the arguments, we can just use spaces.

Now into the nitty gritty.

### Comments

Comments in TeddyLisp start with the characters `;;` so if we wanted to write a comment
to describe a variable we would write:

```lisp
;; This variable contains the string "Thing".
(let thing "Thing")
```

### Types

TeddyLisp has a few types of values. It should be noted that TeddyLisp is not very strict
about types similar to Javascript. Defining a variable with a string value does not mean
that we have to only have a string value in that variable, we can later assign a number to it.

The list of types are as follows:

- `bool` - Represents a true or false value.
- `number` - Represents a signed floating point number.
- `string` - Represents a string of characters.
- `function` - Represents a sequence of calls that itself be called with a set of arguments.

### Functions

TeddyLisp allows you to define functions. Later we will also describe the functions that
come with the language that allow the user to interact with the operating system and
provide basic language features.

To define a function we use the function called `defun` (short for define function). The
first argument of the function `defun` will be the name of our function. The second will
be a list of arguments that our function will take wrapped in parenthesis. And finally the
last argument will be the body of the function. The body of the function will be a series
of expressions (or function calls) that will be evaluated in order.

An example of a simple function that adds two numbers can be seen below.

```lisp
(defun add (x y)
  (+ x y)
)
```

Notice here we don't have to explicitly return the value of the function. The return value
will be the result of the last expression in the body of the function.
