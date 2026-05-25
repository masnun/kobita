# Homebrew ruby 3.3 — system ruby 2.6 too old for github-pages gems.
RUBY_BIN := /usr/local/opt/ruby/bin
export PATH := $(RUBY_BIN):$(PATH)

DATE := $(shell date +%Y-%m-%d)

.PHONY: run new install build

## make run — launch local server at http://localhost:4000/
run:
	bundle exec jekyll serve --livereload

## make build — build site into _site/
build:
	bundle exec jekyll build

## make install — install gem dependencies
install:
	bundle install

## make new name=<slug> [title="..."] — create a poem in _poems/
new:
	@test -n "$(name)" || { echo "Usage: make new name=<slug> [title=\"কবিতার নাম\"]"; exit 1; }
	@file="_poems/$(DATE)-$(name).md"; \
	test ! -e "$$file" || { echo "Exists: $$file"; exit 1; }; \
	title="$(title)"; \
	printf -- '---\ntitle: %s\ndate: %s\n---\n\n' "$${title:-$(name)}" "$(DATE)" > "$$file"; \
	echo "Created $$file"
