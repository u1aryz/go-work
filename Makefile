all: clean build

setup:
	@go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
	@go install github.com/evilmartians/lefthook@latest
	@lefthook install

clean:
	@rm -rf dist/

build:
	@go build -o dist/app
	@echo "Build complete"

run:
	@go run .
