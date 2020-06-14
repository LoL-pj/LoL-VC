build:
	docker-compose build 

start:
	docker-compose up

migration:
	docker-compose run web bundle exec rails db:migrate

create:
	docker-compose run web bundle exec rails db:create

seed:
	docker-compose run web bundle exec rails db:seed

console:
	docker-compose run web bundle exec rails c