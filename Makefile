all: clean build

clean:
	@rm -r dist/ 2> /dev/null || true

build:
	@go build -o dist/app
	@echo "Build complete"

run:
	@go run .
