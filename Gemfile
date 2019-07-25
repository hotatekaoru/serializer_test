source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'haml-rails'
gem 'kaminari'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma'
gem 'sass-rails'
gem 'seed-fu'
gem 'uglifier'

group :development, :test do
  gem 'brakeman'
  gem 'bullet'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rbenv'
  gem 'capistrano-slackify', require: false
  gem 'factory_bot_rails'
  gem 'haml_lint', require: false
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-performance'
  gem 'rubocop-rspec'
  gem 'rubycritic', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  gem 'webdrivers', '~> 4.1'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rails_db'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
end
