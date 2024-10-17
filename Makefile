all: zpevnik.pdf

zpevnik.pdf: chords/*.cho
	chordpro $(shell ls -d chords/*) -o zpevnik.pdf

%.pdf: chords/%.cho
	chordpro $^ -o $@

clean:
	$(RM) *.pdf *.html

.PHONY: all clean
