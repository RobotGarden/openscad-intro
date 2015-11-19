MARKDOWN=markdown
ASCIIDOC=asciidoctor

FILES=\
  README.html \
  part1.html \
  ex1-solution.html \
  ex2-solution.html \
  ex3-solution.html

%.html: %.adoc
	$(ASCIIDOC) $<

all: $(FILES)
