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
  spec.homepage      = "https://github.com/rpbaltazar/populmaid.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
end
