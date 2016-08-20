Gem::Specification.new do |s|
  s.name        = 'uc_student_id'
  s.version     = '0.0.1'
  s.date        = '2016-08-20'
  s.summary     = "Validates a UC student's id"
  s.description = 'A simple uc student id validation gem'
  s.authors     = ['Sebastián Salata']
  s.email       = 'sa.salatart@gmail.com'
  s.files       = %w(lib/uc_student_id.rb lib/string_validator.rb lib/ar_validator.rb)
  s.homepage    = 'http://rubygems.org/gems/uc_student_id'
  s.license     = 'MIT'

  s.add_dependency 'railties', '~> 5.0'
  s.add_dependency 'activemodel', '~> 5.0'

  s.add_development_dependency 'rspec', '~> 2.14'
end
