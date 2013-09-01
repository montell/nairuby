source 'https://rubygems.org'
gem 'rails', '4.0.0'
gem 'pg'

gem 'jquery-rails'
gem "bootstrap-sass"
gem "devise", ">= 2.1.2"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
gem 'sass-rails', '~> 4.0.0.rc2'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 1.2'
gem 'turbolinks'
gem 'cloudinary'
gem 'carrierwave'
gem 'hirb'
gem 'gmail'
gem "figaro" # gem for environment variables
gem 'delayed_job_active_record'
gem 'ckeditor', :github => 'Banta/ckeditor'
gem 'unicorn'
gem "autoprefixer-rails", "~> 0.4.20130515"

group :development do
	gem "quiet_assets", ">= 1.0.1"
	gem "better_errors", ">= 0.3.2"
	gem "binding_of_caller", ">= 0.6.8"
	gem "hub", ">= 1.10.2", :require => nil
	gem 'therubyracer'
end

group :development, :test do
	gem "rspec-rails"
	gem "factory_girl_rails"
  gem 'pry-debugger'
  gem 'selenium-webdriver'
  gem 'launchy'
end

group :test do
	gem "database_cleaner"
	gem "email_spec"
	gem "cucumber-rails", :require => false
	gem "launchy"
	gem "capybara"
end

group :doc do
  gem 'sdoc', require: false
end

group :production do
	gem "thin", ">= 1.5.0"
end
