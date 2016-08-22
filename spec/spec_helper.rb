require 'bundler/setup'
Bundler.setup

require 'uc_number_validator'
require 'active_model'

Dir["#{File.dirname(__FILE__)}/dummy/**/*.rb"].each { |f| load(f) }
