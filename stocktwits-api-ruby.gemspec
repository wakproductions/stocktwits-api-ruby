# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stocktwits_api/version'

Gem::Specification.new do |spec|
  spec.name          = "stocktwits_api_ruby"
  spec.version       = StockTwits::VERSION
  spec.authors       = ["Winston Kotzan"]
  spec.email         = ["wak@wakproductions.com"]
  spec.summary       = %q{Gem for accessing StockTwits functions.}
  spec.description   = %q{Gem for accessing StockTwits functions.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "httparty", "~> 0.13"
  spec.add_development_dependency "json", "~> 1.8"
end
