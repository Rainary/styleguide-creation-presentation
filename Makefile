site:
	docker-compose run --rm foliant make site --with mkdocs

pdf:
	docker-compose run --rm foliant make pdf --with pandoc

localsite:
	docker-compose run --rm foliant make site --with mkdocs --logs logs && python3 -m http.server -d $(ls -td -- *.mkdocs | head -n 1) 8000
