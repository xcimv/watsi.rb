# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "watsi/version"

Gem::Specification.new do |spec|
  spec.name          = "watsi"
  spec.version       = Watsi::VERSION
  spec.authors       = ["Watsi"]
  spec.email         = ["connect@watsi.org"]

  spec.summary       = "Watsi Ruby API client"
  spec.description   = "Ruby client for the Watsi API"
  spec.homepage      = "https://developers.watsi.org/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 11.1"
  spec.add_development_dependency "rspec", "~> 3.4"
  spec.add_development_dependency "webmock", "~> 1.24"
  spec.add_development_dependency "vcr", "~> 3.0"
  spec.add_development_dependency "simplecov", "~> 0.11"
  spec.add_development_dependency "fasterer", "~> 0.3"
end
