# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'to_fib/version'

Gem::Specification.new do |spec|
  spec.name          = "to_fib"
  spec.version       = ToFib::Version
  spec.authors       = ["Dave De Carlo"]
  spec.email         = ["dec114@gmail.com"]
  spec.summary       = %q{to the nearest fibonacci number}
  spec.homepage      = "https://github.com/quotha/to_fib"
  spec.description   = "The to_fib Ruby Gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "bundler", '~> 0'
  spec.add_development_dependency "rake", '~> 0'
end
