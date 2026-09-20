TYPST := typst
SOURCE := main.typ
OUTPUT := main.pdf

.PHONY: build watch clean

build:
	$(TYPST) compile $(SOURCE) $(OUTPUT)

watch:
	$(TYPST) watch $(SOURCE) $(OUTPUT)

clean:
	rm -f $(OUTPUT)
