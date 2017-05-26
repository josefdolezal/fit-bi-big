build: clean notes documentation

notes:
	latexmk -pdf notes

documentation:
	latexmk -pdf documentation

clean:
	latexmk -c
