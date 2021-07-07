# frozen_string_literal: true

require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::SimpleFormatter,
  SimpleCov::Formatter::HTMLFormatter
])

require 'bundler/setup'
Bundler.setup

require 'uc_number_validator'

Dir["#{File.dirname(__FILE__)}/dummy/**/*.rb"].each { |f| load(f) }
