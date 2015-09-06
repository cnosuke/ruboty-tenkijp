# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/tenkijp/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-tenkijp"
  spec.version       = Ruboty::TenkiJp::VERSION
  spec.authors       = ["cnosuke"]
  spec.email         = ["shinnosuke@gmail.com"]

  spec.summary       = 'A ruboty handler to get weather informations of Japan.'
  spec.homepage      = 'https://github.com/cnosuke/ruboty-tenkijp'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'tenkijp'
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
