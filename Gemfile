# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'

gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'

gem 'sass-rails', '>= 6'

gem 'webpacker', '~> 5.0'

gem 'jbuilder', '~> 2.7'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'slim-rails'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'ffaker', '~> 2.20'
end

group :development do
  gem 'web-console', '>= 4.1.0'

  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
