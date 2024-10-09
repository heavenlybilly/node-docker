up:
	docker compose up --build -d

down:
	docker compose down

restart:
	${MAKE} down
	${MAKE} up

logs:
	docker compose logs -f

bash:
	docker exec -it node bash