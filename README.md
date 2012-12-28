# Test

This repo is for testing. Site, files, and other are **ONLY FOR TESTING**. **DON'T USE THIS REPO FOR YOUR MAIN SISTEM! USE THIS REPO ONLY FOR TESTING (like a VirtualBox)!**

# Lisp

There is Common Lisp test. It is app for displaying **Hello world!**

Also, there is `shell script` (`.sh`) called *"clisp-convert"* for CLISP conversion from °C to °F. I will try do make that in `shellisp` language.

# Emacs

Firstly, run [clisp-ubuntu.sh] (https://github.com/ZDroid/test/blob/master/clisp-ubuntu.sh)
Note: **FIRSTLY SEE WHAT TO UNCOMMENT!**

After that, we need SLIME dir → `mkdir ~/.slime`

Make `.emacs` file in your **home** dir

Insert following code in that
```
;;; Lisp (SLIME) interaction
(setq inferior-lisp-program "clisp")
(add-to-list 'load-path "~/.slime")
(require 'slime)
(slime-setup)
```
Also, you can download `.emacs` file from [**/ZDroid/test/.emacs**] (https://github.com/ZDroid/test/blob/master/.emacs).

Emacs is now ready for LISP!

# Cloning

```
$ git clone git://github.com/ZDroid/test
```

# Simple run

```
$ python /path/to/test/test.lsp
```
and
```
$ /path/to/test/clisp-convert.sh
```
