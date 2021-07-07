Gem::Specification.new do |s|
  s.name        = 'uc_number_validator'
  s.version     = '0.0.1'
  s.date        = '2016-08-20'
  s.summary     = "Validates a UC student's number code"
  s.description = 'A simple UC student number code validation gem'
  s.authors     = ['Sebastián Salata']
  s.email       = 'sa.salatart@gmail.com'
  s.files       = %w(lib/uc_number_validator.rb lib/string_validator.rb lib/ar_validator.rb)
  s.homepage    = 'https://github.com/sasalatart/uc-number-validator'
  s.license     = 'MIT'

  s.add_dependency 'railties', '~> 5.0'
  s.add_dependency 'activemodel', '~> 5.0'

  s.add_development_dependency 'rspec', '~> 2.14'
  s.add_development_dependency 'simplecov', '~> 0.19'
  s.add_development_dependency 'coveralls', '~> 0.7'
end
