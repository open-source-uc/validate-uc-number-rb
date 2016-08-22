require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

require 'bundler/setup'
Bundler.setup

require 'uc_number_validator'

Dir["#{File.dirname(__FILE__)}/dummy/**/*.rb"].each { |f| load(f) }
