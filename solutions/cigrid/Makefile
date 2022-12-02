executable=cigrid

all:
	rm -f $(executable) && dune build && cp _build/default/src/cigrid.exe $(executable)

clean:
	dune clean
	rm -f $(executable)
