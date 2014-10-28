# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ping45/version'

Gem::Specification.new do |spec|
  spec.name          = "ping45"
  spec.version       = Ping45::VERSION
  spec.authors       = ["Daniel Smith"]
  spec.email         = ["jellymann@gmail.com"]
  spec.summary       = %q{Client-side CLI for Ping45}
  spec.description   = %q{Does the pinging on the PI, and let's users do first-time setup.}
  spec.homepage      = "http://www.platform45.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "httparty", "~> 0.13"
end
