.DEFAULT_GOAL := rebuild

.PHONY: clean
clean:
	rm -rf ./public

build:
	hugo
	cp -R ./public/* ../li-go.github.io/

.PHONY: rebuild
rebuild: clean build
