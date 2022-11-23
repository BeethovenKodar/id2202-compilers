.PHONY: all clean
some_file= calc
all:
	ocamlbuild ${some_file}.native -pkgs str
	mv ${some_file}.native ${some_file}
clean:
	$(RM) -rf _build
