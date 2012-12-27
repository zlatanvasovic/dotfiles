#!/bin/bash
# CLISP skripta - konverzija iz C° u °F
# Napisao Zlatan Vasović (ZDroid) @ 2012
clear
echo "Ovo je CLISP skripta - konverzija iz C° u °F"
echo "Za primer je uzeto 10° C"
clisp
(+ (/ (* 10 9) 5) 32)
