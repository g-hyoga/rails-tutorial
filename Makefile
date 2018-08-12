

docker-build:
	docker build -t rails-tutorial .

run:
	docker run -p 3000:3000 -v $(PWD):/myapp rails-tutorial rails s

test:
	docker run -v $(PWD):/myapp rails-tutorial rails test

guard:
	docker run -it -v $(PWD):/myapp rails-tutorial bundle exec guard

console:
	docker run -it -v $(PWD):/myapp rails-tutorial bundle exec rails console
