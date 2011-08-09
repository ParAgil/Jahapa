source 'http://rubygems.org'

gem 'rails', '3.1.0.rc5'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3-ruby', :require => 'sqlite3'
gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
gem 'sprockets'
gem 'sass-rails', "~> 3.1.0.rc"
gem 'coffee-rails', "~> 3.1.0.rc"
gem 'uglifier'
gem 'execjs'

group :production do
  gem 'therubyracer-heroku', '0.8.1.pre3' # you will need this too
  gem "pg", "~> 0.11.0"
end

group :test, :development do
  gem "rspec-rails"
  gem 'open_gem'
end
