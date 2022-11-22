
run:
	ocamlbuild -use-menhir -menhir "menhir --external-tokens Token" cigrid.native
	mv cigrid.native cigrid

clean:
	rm -rf _build