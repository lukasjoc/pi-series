
all: ts perl java php js python go c nim v ruby

.PHONY: all

python:
	python3 pi.py

nim:
	nim c --hints:off pi.nim; ./pi; rm -f pi

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

java:
	javac pi.java; java pi; rm -f pi.class

v:
	v pi.v; ./pi; rm -f pi

php:
	php pi.php

ruby:
	ruby pi.rb

runlog:
	make all > runlog.txt

