#!/bin/bash
# Script - CLISP conversion from C° to F°
# Written by Zlatan Vasović (ZDroid) @ 2013

echo "This is script - CLISP conversion from C° to °F"
echo "For example is taken 10° C"
clisp -x '(+ (/ (* 10 9) 5) 32)'

# Use (+ (/ (* $c 9) 5) 32) and replace $c with C° value
