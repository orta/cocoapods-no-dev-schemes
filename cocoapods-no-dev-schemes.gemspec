# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-no-dev-schemes.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-no-dev-schemes'
  spec.version       = CocoapodsNoDevSchemes::VERSION
  spec.authors       = ['Orta Therox']
  spec.email         = ['orta.therox@gmail.com']
  spec.description   = %q{Removes all the CocoaPods Shared Schemes from Developer Pods.}
  spec.summary       = %q{Removes all the CocoaPods Shared Schemes from Developer Pods.}
  spec.homepage      = 'https://github.com/orta/cocoapods-no-dev-schemes'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
