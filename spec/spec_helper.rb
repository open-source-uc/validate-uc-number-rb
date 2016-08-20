require 'bundler/setup'
Bundler.setup

require 'uc_student_id'
require 'active_model'

Dir["#{File.dirname(__FILE__)}/dummy/**/*.rb"].each { |f| load(f) }
