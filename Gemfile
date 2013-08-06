source 'https://rubygems.org'
gem 'rails', '3.2.8'
gem 'pg'

gem 'jquery-rails'
gem "bootstrap-sass"
gem "devise", ">= 2.1.2"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.0.4"
gem 'cloudinary'
gem 'carrierwave'
gem 'hirb'
gem 'gmail'
gem "figaro" # gem for environment variables
gem 'delayed_job_active_record'
gem 'ckeditor', :github => 'Banta/ckeditor'

group :development do
	gem "quiet_assets", ">= 1.0.1"
	gem "better_errors", ">= 0.3.2"
	gem "binding_of_caller", ">= 0.6.8"
	gem "hub", ">= 1.10.2", :require => nil
	gem 'therubyracer'
end

group :development, :test do
	gem "rspec-rails", ">= 2.11.4"
	gem "factory_girl_rails", ">= 4.1.0"
end

group :test do
	gem "database_cleaner", ">= 0.9.1"
	gem "email_spec", ">= 1.4.0"
	gem "cucumber-rails", ">= 1.3.0", :require => false
	gem "launchy", ">= 2.1.2"
	gem "capybara"
end

group :production do
	gem "thin", ">= 1.5.0"
end

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end