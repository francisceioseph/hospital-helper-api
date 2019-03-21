# README

This is the server used by the Hospital Helper and Hospital Chat applications.

* Ruby version: 2.5.4

* System dependencies
> Docker Desktop installed.
> Virtualization Services enabled.

* Configuration
- Download the project
- Copy the proper `<environment>.env` file to the `.env` file in the root of the project folder
- Open your Terminal/CMD in the project folder
- Type:
> docker-compose up --build


* Database creation
Then open another Terminal/CMD instance and type the following commands:
> docker-compose run rails rails db:create
> docker-compose run rails rails db:migrate

* Database initialization
> docker-compose run rails rails db:germinate