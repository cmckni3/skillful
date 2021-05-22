source 'https://rubygems.org'
ruby '~> 2.5.7'

# Application configuration
gem 'dotenv-rails', '2.2.1', require: 'dotenv/rails-now', groups: [:development, :test]

gem 'rails', '~> 4.2.11', '>= 4.2.11.1'

gem 'pg'

gem 'sass-rails', '~> 5.0', '>= 5.0.7'
gem 'slim-rails', '>= 3.2.0'
gem 'sprockets', '>= 3.0.0'
gem 'sprockets-es6'
gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails', '>= 4.3.5'
gem 'quiet_assets', '>= 1.1.0'

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap', '~> 3.2'
end
gem 'font-awesome-sass', '~> 4.4'

gem 'active_model_serializers', '>= 0.10.10'
gem 'responders', '~> 2.4', '>= 2.4.1'

gem 'sdoc', '~> 1.0.0', group: :doc

group :development do
  gem 'byebug'
  gem 'rubocop'
  gem 'web-console', '~> 3.3', '>= 3.3.0'
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
  gem 'minitest-rails', '>= 2.2.1'
  gem 'minitest-rails-capybara', '>= 2.1.2'
end

group :production do
  gem 'rails_12factor'
end
