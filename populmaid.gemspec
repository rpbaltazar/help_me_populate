# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'populmaid/version'

Gem::Specification.new do |spec|
  spec.name          = "populmaid"
  spec.version       = Populmaid::VERSION
  spec.authors       = ["Rui Baltazar"]
  spec.email         = ["rui.p.baltazar@gmail.com"]
  spec.summary       = "Manage your database populating process more easily"
  spec.description   = "This gem is intended to help you managing the data handling on migrations"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
