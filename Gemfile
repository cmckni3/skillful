source 'https://rubygems.org'
ruby '~> 2.4.6'

# Application configuration
gem 'dotenv-rails', require: 'dotenv/rails-now', groups: [:development, :test]

gem 'rails', '~> 4.2.1'

gem 'pg'

gem 'sass-rails', '~> 5.0'
gem 'slim-rails'
gem 'sprockets', '>= 3.0.0'
gem 'sprockets-es6'
gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'
gem 'quiet_assets'

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap', '~> 3.2'
end
gem 'font-awesome-sass', '~> 4.4'

gem 'active_model_serializers'
gem 'responders', '~> 2.0'

gem 'sdoc', '~> 0.4.0', group: :doc

group :development do
  gem 'byebug'
  gem 'rubocop'
  gem 'web-console', '~> 3.0'
end

group :development, :test do
  gem 'faker'
  gem 'guard'
  gem 'guard-minitest'
  gem 'guard-rubocop'
  gem 'spring'
  gem 'thin'
end

group :test do
  gem 'minitest-focus'
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'
end

group :production do
  gem 'rails_12factor'
end
