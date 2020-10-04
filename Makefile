
all: ts perl java php js python go c nim v ruby rust cpp

.PHONY: all

runlog:
	make all > runlog.txt

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

rust:
	rustc pi.rs; ./pi; rm -f pi

ruby:
	ruby pi.rb

cpp:
	g++ pi.cpp; ./a.out; rm -f a.out

