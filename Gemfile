# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# these gems are in the default group to be installed
gem "sinatra"
gem 'data_mapper'
gem 'dm-postgres-adapter'
gem "bcrypt", "~> 3.1"
gem "rake", "~> 12.3"
gem 'pry'

# testing
group :testing do 
    gem "rspec"
    gem "capybara"
    gem 'simplecov', require: false
    gem "sinatra-config-file", "~> 1.0"
    gem "database_cleaner", "~> 1.7"
    gem "dm-transactions", "~> 1.2"

    require 'simplecov'
    SimpleCov.start
end



