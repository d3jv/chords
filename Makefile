all:
	chordpro $(shell ls -d chords/*) -o zpevnik.pdf

clean:
	$(RM) *.pdf *.html

.PHONY: all clean
