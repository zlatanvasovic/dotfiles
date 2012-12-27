#!/bin/bash
# Script - CLISP conversion from C° to °F
# Written by Zlatan Vasović (ZDroid) @ 2012
clear
echo "This is script - CLISP conversion from C° to °F"
echo "For example is taken 10° C"
clisp
(+ (/ (* 10 9) 5) 32)
(exit)
