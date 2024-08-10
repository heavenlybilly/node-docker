up:
	$(eval project_name := $(shell ./enter-name.sh))
	PROJECT=$(project_name) docker compose up --build

down:
	docker compose down

restart:
	${MAKE} down
	${MAKE} up

logs:
	docker compose logs -f

bash:
	docker exec -it node bash