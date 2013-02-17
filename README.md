# Test

This repo is for testing. Site, files, and other are **ONLY FOR TESTING**. **DON'T USE THIS REPO FOR YOUR MAIN SISTEM! USE THIS REPO ONLY FOR TESTING (like a VirtualBox)!**

**Test site** is created with github pages. Test site (`gh-pages` branch) → http://zdroid.github.com/test/.

# Lisp

There is Common Lisp test. It is app for displaying **Hello world!**

Also, there is `shell script` (`.sh`) called *"clisp-convert"* for CLISP conversion from °C to °F. I will try do make that in `shellisp` language. **Before you run this scripts, you need to set `chmod a+x` or `chmod x` (for executing).**

I recommend `Emacs` (see **# Emacs**) for editing this code. If you don't want use Emacs, you can try other (`gedit`, `nano`, `vi(m)`...).

# Emacs

Firstly, run [clisp-ubuntu.sh] (https://github.com/ZDroid/test/blob/master/clisp-ubuntu.sh)
Note: **SEE WHAT TO UNCOMMENT!**

After that, we need SLIME dir → `mkdir ~/.slime`

Make `.emacs` file in your **home** dir

Insert following code in that (you can remove *`;;; Lisp (SLIME) interaction`* if you want, that's comment)
```lisp
;;; Lisp (SLIME) interaction
(setq inferior-lisp-program "clisp")
(add-to-list 'load-path "~/.slime")
(require 'slime)
(slime-setup)
```
Also, you can download `.emacs` file from [**/ZDroid/test/.emacs**] (https://github.com/ZDroid/test/blob/master/.emacs).

Emacs is now ready for LISP!

# C
There is also C test file, `test.c`.
```c
/* Test program */

#include<stdio.h>

main()
{
    printf("C test");

}
```

# Cloning
```shell
$ git clone git://github.com/ZDroid/test
```

# Simple run
```shell
$ python /path/to/test/test.lsp
```
and
```shell
$ /path/to/test/clisp-convert.sh
```
