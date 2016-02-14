# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rgrid/version'

Gem::Specification.new do |spec|
  spec.name          = 'rgrid'
  spec.version       = RGrid::VERSION
  spec.authors       = ['Gavin Laking']
  spec.email         = ['gavinlaking@gmail.com']
  spec.summary       = 'RGrid is an Array-like data structure for Ruby.'
  spec.description   = 'A data structure for effectively manipulating ' \
                       'multi-dimensional arrays.'
  spec.homepage      = 'http://github.com/gavinlaking/rgrid'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.bindir        = 'bin'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',        '~> 1.11'
  spec.add_development_dependency 'rake',           '~> 10.0'
  spec.add_development_dependency 'guard',          '2.13.0'
  spec.add_development_dependency 'guard-minitest', '2.4.4'
  spec.add_development_dependency 'guard-rubocop',  '1.2.0'
  spec.add_development_dependency 'minitest',       '5.8.4'
  spec.add_development_dependency 'rubocop',        '0.37.2'
  spec.add_development_dependency 'yard',           '0.8.7.6'
end
