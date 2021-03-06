# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'js_invoker/version'

Gem::Specification.new do |spec|
  spec.name          = "js_invoker"
  spec.version       = JsInvoker::VERSION
  spec.authors       = ["J.Fukaya"]
  spec.email         = ["fukajun.shark@gmail.com"]
  spec.summary       = %q{Invoke javascript code for each templates and partials.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.1"
  spec.add_dependency "coffee-rails"
  spec.add_dependency "jquery-rails"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "rails", ">= 3.2"
  spec.add_development_dependency "capybara-webkit"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "launchy"
  spec.add_development_dependency "test-unit"
end
