# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'drprl/version'

Gem::Specification.new do |spec|
  spec.name          = "drprl"
  spec.version       = Drprl::VERSION
  spec.authors       = ["Patrick Schmitz"]
  spec.email         = ["p.schmitz@gmail.com"]
  spec.summary       = %q{A simple tool to transform a Drupal DB to WRX XML}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.6.6"
  spec.add_dependency "document_builder", "~> 0.1.1"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2.0"
  spec.add_development_dependency "pry"
end
