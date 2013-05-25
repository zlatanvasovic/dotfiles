#!/usr/bin/env clisp

;;;; Lisp program for starters

(format t "~%~%Hi! Welcome to Lisp!~%")
(format t "This is your first program...~%~%")

;;; Make GRID

(setf row 5) ; rows - example value 5
(setf col 6) ; columns - example value 6

(format t "Making GRID...~%")
(format t "Number of squares in your grid is:")
(print (* row col))
(format t "~%~%")
