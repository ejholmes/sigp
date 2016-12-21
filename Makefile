.PHONY: all

all: bin/sigp-darwin bin/sigp-linux

bin/sigp-%: main.go
	env GOOS=$* go build -o $@ .
