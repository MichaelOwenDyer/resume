TYPST := typst
FONT_PATHS := --font-path fonts/EBGaramond --font-path fonts/Roboto --font-path fonts/FontAwesome

.PHONY: all resume-en resume-de

all: resume-en resume-de

resume-en:
	$(TYPST) watch $(FONT_PATHS) --input data=content/resume/en.typ resume.typ target/Dyer_Michael_Resume.pdf

resume-de:
	$(TYPST) watch $(FONT_PATHS) --input data=content/resume/de.typ resume.typ target/Dyer_Michael_Lebenslauf.pdf
