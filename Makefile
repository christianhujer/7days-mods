xml_files=$(shell find -name "*.xml")

.PHONY: all
all: lint
	zip -r MoreMods.zip MoreMods/

lint: lint($(xml_files))

lint(%):
	xmllint --noout $*
