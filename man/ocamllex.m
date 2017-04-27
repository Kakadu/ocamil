.TH OCAMLLEX 1

.SH NAME
ocamllex \- The Objective Caml lexer generator

.SH SYNOPSIS
.B ocamllex
.I filename.mll

.SH DESCRIPTION

The
.BR ocamllex (1)
command generates Objective Caml lexers from a set of regular
expressions with associated semantic actions, in the style of
.BR lex (1).

Running
.BR ocamllex (1)
on the input file
.IR lexer \&.mll
produces Caml code for a lexical analyzer in file 
.IR lexer \&.ml.

This file defines one lexing function per entry point in the lexer
definition. These functions have the same names as the entry
points. Lexing functions take as argument a lexer buffer, and return
the semantic attribute of the corresponding entry point.

Lexer buffers are an abstract data type implemented in the standard
library module Lexing. The functions Lexing.from_channel,
Lexing.from_string and Lexing.from_function create
lexer buffers that read from an input channel, a character string, or
any reading function, respectively.

When used in conjunction with a parser generated by 
.BR ocamlyacc (1),
the semantic actions compute a value belonging to the type token defined
by the generated parsing module.

.SH SEE ALSO
.BR ocamlyacc (1).
.br
.I The Objective Caml user's manual,
chapter "Lexer and parser generators".