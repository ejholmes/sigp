bin/sigp-%: main.go
	env GOOS=$* go build -o $@ .
