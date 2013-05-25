;;;; Temperature conversion in Lisp

;;; I made Lisp function 'tempc' for conversion from °C to °F

(defun tempc(n)
(+ (/ (* n 9) 5) 32))

;;; In this situation variable 'n' is °C value

;;; You can load this function with "(require '/path/to/tempc.lsp')"

;;; Usage:
;;; (tempc 1)
;;; (tempc 2)
;;; (tempc 3)
;;; ...
;;; (tempc 40)
;;; ...
