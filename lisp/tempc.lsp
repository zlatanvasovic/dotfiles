;;;; Temperature conversion in Lisp - from °C to °F

;;; Function is called "tempc"

(defun tempc(n) ; "n" = °C value
  (+ (/ (* n 9) 5) 32))

;;; Load this function with `(require '/path/to/tempc.lsp')`

;;; Usage:
;;; (tempc 1)
;;; (tempc 2)
;;; (tempc 3)
;;; ...
;;; (tempc 40)
;;; ...
