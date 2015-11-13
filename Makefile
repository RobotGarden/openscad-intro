MARKDOWN=markdown
ASCIIDOC=asciidoctor

%.html: %.adoc
	$(ASCIIDOC) $<

all: README.html handout.html ex1-solution.html ex2-solution.html
