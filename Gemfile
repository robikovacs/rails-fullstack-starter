source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'faker', '~> 2.15', '>= 2.15.1'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.1'
gem 'redis', '~> 4.0'
gem 'redis-objects', '~> 1.5'
gem 'uniqueness', '~> 1.1'
gem 'webpacker', '~> 5.2', '>= 5.2.1'

group :development do
  gem 'amazing_print'
  gem 'annotate'
  gem 'guard', require: false
  gem 'guard-rspec', require: false
  gem 'letter_opener'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'terminal-notifier', require: false
  gem 'terminal-notifier-guard', require: false
  gem 'web-console', '>= 4.1.0'
end

group :development, :test do
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
  gem 'byebug'
  gem 'dotenv-rails'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'shoulda-context'
  gem 'shoulda-matchers'
end
