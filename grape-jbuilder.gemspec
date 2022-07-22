# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grape/jbuilder/version'

Gem::Specification.new do |spec|
  spec.name          = 'grape-jbuilder_neo'
  spec.version       = Grape::Jbuilder::VERSION
  spec.authors       = ['dogwood008', 'Shu Masuda']
  spec.email         = ['dogwood008+github@gmail.com', 'masushu@gmail.com']
  spec.description   = %q{Use Jbuilder in Grape}
  spec.summary       = %q{Use Jbuilder in Grape}
  spec.homepage      = 'https://github.com/dogwood008/grape-jbuilder_neo'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'grape', '~> 1.0'
  spec.add_dependency 'jbuilder', '~> 2.7'
  spec.add_dependency 'tilt', '~> 2.0'
  spec.add_dependency 'tilt-jbuilder', '~> 0.7'
  spec.add_dependency 'i18n', '>= 1.6'
  spec.add_dependency 'hashie', '>= 3.5'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'json_expressions'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
