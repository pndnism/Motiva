.PHONY: log
.PHONY: test

silent-run:
	docker-compose up -d --build
run:
	docker-compose up --build
setup:
	docker-compose build
up:
	docker-compose up
silent-up:
	docker-compose up -d
stop:
	docker-compose stop
setup-db:
	docker-compose exec motiva-app bin/rails db:create db:migrate db:seed
migrate:
	docker-compose exec motiva-app bin/rails db:migrate
enter:
	docker-compose exec motiva-app /bin/bash
enter-db:
	docker-compose exec motiva-db /bin/bash
update-lint-todos:
	docker-compose exec motiva-app bundle exec rubocop --auto-gen-config --no-offense-counts --no-auto-gen-timestamp
log:
	docker-compose logs -f motiva-app
log-db:
	docker-compose logs -f mysql
log-all:
	docker-compose logs -f
clean-temp:
	rm -f log/*
	rm -rf tmp/cache
prune-all:
	docker system prune -a
