.env.nodered:
	cp .env.nodered.template .env.nodered

start-nodered: .env.nodered
	docker-compose build erlangred-nodered-template
	docker-compose up erlangred-nodered-template

build-nodered: .env.nodered
	docker-compose build erlangred-nodered-template

enter-nodered:
	docker exec -it $$(docker ps -f ancestor=$$(basename $$(pwd))-erlangred-nodered-template -q) bash
