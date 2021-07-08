# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'uc_number_validator'
  s.version     = '0.0.2'
  s.date        = '2021-07-21'
  s.summary     = "Validates a UC student's number code"
  s.description = 'A simple UC student number code validation gem'
  s.authors     = ['Sebastián Salata']
  s.email       = 'sa.salatart@gmail.com'
  s.files       = %w[lib/uc_number_validator.rb lib/string_validator.rb lib/ar_validator.rb]
  s.homepage    = 'https://github.com/open-source-uc/uc-number-validator'
  s.license     = 'MIT'
  s.metadata    = {
    'github_repo' => 'git@github.com:open-source-uc/validate-uc-number-rb.git'
  }
  
  s.add_dependency 'activemodel', '~> 5.0'
  s.add_dependency 'railties', '~> 5.0'

  s.add_development_dependency 'coveralls', '~> 0.7'
  s.add_development_dependency 'rspec', '~> 2.14'
  s.add_development_dependency 'simplecov', '~> 0.19'

end
