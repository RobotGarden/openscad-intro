MARKDOWN=markdown

%.html: %.md
	$(MARKDOWN) $< >$@

all: README.html handout.html ex1-solution.html ex2-solution.html
