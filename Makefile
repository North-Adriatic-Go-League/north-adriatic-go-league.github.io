start:
	docker build -t jekyll .
	docker run --rm -v $$(pwd):/site -p 4000:4000 jekyll

