# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'

gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'

gem 'sass-rails', '>= 6'

gem 'webpacker', '~> 5.0'

# gem 'jbuilder', '~> 2.7'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise'
gem 'devise-i18n'
gem 'kaminari'
gem 'pundit'
gem 'rails-i18n'
gem 'slim-rails'
gem 'kaminari-i18n'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'ffaker', '~> 2.20'
  gem 'letter_opener'
end

group :development do
  gem 'web-console', '>= 4.1.0'

  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
