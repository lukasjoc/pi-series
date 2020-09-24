
all: ts perl php js python go c nim

.PHONY: all
	
python:
	python3 pi.py

nim:
	nim c pi.nim; ./pi; rm -f pi

go:
	go build pi.go; ./pi; rm -f pi

js:
	node pi.js

ts:
	deno run pi.ts

c:
	gcc pi.c; ./a.out; rm -f ./a.out

perl:
	perl pi.pl

php:
	php pi.php
