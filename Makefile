all: clean lint build

setup:
	go install github.com/golangci/golangci-lint/cmd/golangci-lint@v2.0.2
	go install github.com/evilmartians/lefthook@v1.11.6
	lefthook install

clean:
	@rm -rf dist/
	@echo "Removed dist"

lint:
	@golangci-lint run --fix
	@echo "Lint complete"

build:
	@go build -o dist/app
	@echo "Build complete"

run:
	@go run .
