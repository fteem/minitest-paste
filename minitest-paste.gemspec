# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/paste/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest-paste"
  spec.version       = Minitest::Paste::VERSION
  spec.authors       = ["Ile Eftimov"]
  spec.email         = ["ileeftimov@gmail.com"]

  spec.summary       = %q{Minitest plugin that uploads test failures in plain text for easier sharing.}
  spec.description   = %q{minitest/paste is a Minitest plugin which collects
                          any test failures, compiles them and uploads them to
                          dpaste.com for easier sharing. After the upload is complete
                          it injects the link in your clipboard.}
  spec.homepage      = "https://github.com/fteem/minitest-paste"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "clipboard", "~> 1.0.6"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
