all: clean build run

clean:
	@rm -r dist/ 2> /dev/null || true

build:
	@go build -o dist/app

run:
	@./dist/app
