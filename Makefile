TYPST := typst
FONT_PATHS := --font-path fonts/EBGaramond --font-path fonts/Roboto --font-path fonts/FontAwesome

.PHONY: all watch-resume-en watch-resume-de

all: watch-resume-en watch-resume-de

watch-resume-en:
	$(TYPST) watch $(FONT_PATHS) \
		--input content=content/resume/en.typ \
		--input env=env.redacted.typ \
		build-resume.typ \
		target/Dyer_Michael_Resume.pdf

watch-resume-de:
	$(TYPST) watch $(FONT_PATHS) \
		--input content=content/resume/de.typ \
		--input env=env.redacted.typ \
		build-resume.typ \
		target/Dyer_Michael_Lebenslauf.pdf
