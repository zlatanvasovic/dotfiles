ZDroid/zdsh
----

**Code collection**

All content is original.

## Lisp

Here is a Common Lisp test. It is a program for displaying **Hello world!**

```lisp
;;;; Prints standard Hello world programm

(print "Hello world!")
(print "This is CLISP test!")
```

You can find `tempc.lsp`, lisp program for **temp**erature **c**onversion.

### Emacs

Emacs is great program for editing lisp code. If you don't want to use Emacs, you can use other editor.

Steps for Emacs install and setup:
* Modify and run `shell/clisp-install.sh` script.
* Make SLIME directory:
```bash
mkdir ~/.slime
```

* Copy `lisp/.emacs` and paste it in your home directory.

Emacs is now ready for LISP!

## Shell

You can use shell scripts from this repo. That's for lisp.

Current scripts:
* **clisp-convert.sh** - script for °C to °F conversion in CLISP
* **clisp-install.sh** - CLISP installation

**Note:**  
Before you run shell scripts, you need to set `chmod +x` (for executing).

## C
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
$ git clone git@github.com:ZDroid/zdsh
```
