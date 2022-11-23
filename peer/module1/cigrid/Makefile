.PHONY: clean
.PHONY: all

all:
	ocamlbuild -use-menhir main.native
	mv _build/main.native cigrid 
	rm ./main.native
clean:
	ocamlbuild -clean
	@rm -f *~ main.native \#*
