# ZDroid/programming

**Collection of programming content**

All content here is original.

# Lisp

Here is a Common Lisp test. It is a program for displaying **Hello world!**

```lisp
;; Prints standard Hello world programm
(print "Hello world!")
(print "This is CLISP test!")
```

## Emacs

Emacs is great program for editing lisp code. If you don't want use Emacs, you can use some other.

Steps for Emacs install and setup:
* Modify and run [clisp-install.sh] (https://github.com/ZDroid/programming/tree/master/clisp-install.sh).
* Make SLIME directory:
```bash
mkdir ~/.slime
```

* Make `.emacs` file in your **home** directory:
```bash
touch ~/.emacs
```

* Insert following code in that (you can remove *`;;; Lisp (SLIME) interaction`* if you want, that's comment):
```lisp
;;; Lisp (SLIME) interaction
(setq inferior-lisp-program "clisp")
(add-to-list 'load-path "~/.slime")
(require 'slime)
(slime-setup)
```
You can download `.emacs` file from [here] (https://github.com/ZDroid/programming/tree/master/lisp/.emacs).

Emacs is now ready for LISP!

# Shell

You can use shell scripts from this repo. That's for lisp.

Current scripts:
* **clisp-convert.sh** - script for °C to °F conversion in CLISP
* **clisp-install.sh** - CLISP installation

**Note:**  
Before you run shell scripts, you need to set `chmod +x` (for executing).

# C
Here is also a simple C test file called *`test.c`*.
```c
/* Test program */

#include<stdio.h>

main()
{
    printf("Hello World");
	printf("C test");


}
```

# Cloning repo
```bash
$ git clone git@github.com:ZDroid/test
```
