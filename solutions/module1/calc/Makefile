.PHONY: all clean
all:
	ocamlbuild calc.native
	mv calc.native calc
	cat example.txt | ./calc

clean:
	$(RM) -rf _build