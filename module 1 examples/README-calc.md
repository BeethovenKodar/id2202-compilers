

# Calc examples

This zip-file includes three folders that demonstrate simple examples of
using OCamlyacc and Menhir. All examples are based on the simple
example from the OCamlyacc manual:
https://ocaml.org/manual/lexyacc.html

1. Folder `calc1`: A basic OCamlyacc example where the ambiguities are
resolved by creating several productions.

2. Folder `calc2`: This is exactly the example that is given in the
OCaml manual. The example shows how to use precedence rules within the
.mly file.

3. Folder `calc3`: The same as `calc2`, but uses features of
Menhir. The makefile also makes sure that Menhir is used when
OCamlbuild builds the program.