source 'http://rubygems.org'

gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'devise'
gem 'carrierwave'
gem 'rmagick'
gem 'cancan'
gem 'heroku'
gem 'fog'
gem 'bootstrap-sass', '~> 2.0.1'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.4'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'uglifier', '>= 1.2.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development do
    gem 'wirble'
end

group :development, :test do
	gem 'sqlite3'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :production do
	gem "pg", "~> 0.12.2"
	gem 'therubyracer-heroku'," ~> 0.8.1.pre3"
end
