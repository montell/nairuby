source 'https://rubygems.org'
gem 'rails', '4.0.0'
gem 'pg'

gem 'jquery-rails'
gem "bootstrap-sass", ">= 2.1.1.0"
gem 'twitter-bootstrap-rails', ">= 2.1.3"
gem "devise", ">= 2.1.2"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.0.4"
gem 'hirb'
gem 'gmail'

gem "figaro" # gem for environment variables

group :development do
	gem "quiet_assets", ">= 1.0.1"
	gem "better_errors", ">= 0.3.2"
	gem "binding_of_caller", ">= 0.6.8"
	gem "hub", ">= 1.10.2", :require => nil
end

group :development, :test do
	gem "rspec-rails"
	gem "factory_girl_rails"
  gem 'pry-debugger'
  gem 'selenium-webdriver'
  gem 'launchy'
end

group :test do
	gem "database_cleaner", ">= 0.9.1"
	gem "email_spec", ">= 1.4.0"
	gem "cucumber-rails", ">= 1.3.0", :require => false
	gem "capybara", ">= 1.1.3"
end

group :doc do
  gem 'sdoc', require: false
end

group :production do
	gem "thin", ">= 1.5.0"
end