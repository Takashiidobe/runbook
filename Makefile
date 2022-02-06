all:
	make serve
serve:
	make generate_toc && mdbook serve
build:
	make generate_toc && mdbook build
install:
	./bin/install
clean:
	rm -rf book/*
generate_toc:
	./bin/generate_toc
deploy:
	make build && ./bin/deploy
