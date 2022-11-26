.PHONY: clean
.PHONY: all

all:
	ocamlbuild -use-menhir main.native
	
	rm ./main.native
clean:
	ocamlbuild -clean
	@rm -f *~ main.native \#*
