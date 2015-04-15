# Skillful

App for managing candidates and skills

## Requirements

* Ruby 2+
* Postgresql 9.4+

## Setup

* Install Ruby

* Install `bundler`
  ```bash
  gem install bundler
  ```

* Install Postgresql

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

