# on mac

all: step1
	echo "[Done!]"

step1: step0
	bun build index.ts --compile --outfile ./node_modules/.bin/my-app

step0: clean
	go build -buildmode=c-shared -o ./out/library ./library.go

clean:
	echo "cleaning"
	rm -rf out
