# Skillful

App for managing candidates and skills

## Requirements

* Ruby 2+
* Postgresql 9.4+
* Nodejs 0.10+
* Bower

## Setup

* Install Ruby

* Install Postgresql

* Install node.js

* Install bower
  ```
  npm install -g bower
  ```

* Edit `config/database.yml`

* Run setup script
  ```bash
  bin/setup
  ```

* Install `bundler` dependencies
  ```bash
  bundle install
  ```

* Setup database and run migrations
  ```bash
  rake db:create db:migrate
  ```

## Run the application

* Start the rails server
  ```bash
  rails s
  ```

* Visit the site in the browser
  ```bash
  open localhost:3000
  ```

## Run the tests
  ```bash
  rake test
  ```
