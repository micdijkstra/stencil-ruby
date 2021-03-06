# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stencil/version'

Gem::Specification.new do |spec|
  spec.name          = "stencil-ruby"
  spec.version       = Stencil::VERSION
  spec.authors       = ["Michael Dijkstra"]
  spec.email         = ["michael@xxix.co"]
  spec.summary       = "A workflow gem"
  spec.description   = "Compilers to help you get started building a new web site, web application or HTML email fast."
  spec.homepage      = "https://github.com/xxix/stencil-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['stencil']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'sassc', "~> 1.6"
  spec.add_runtime_dependency 'filewatcher', "~> 0.5"
  spec.add_runtime_dependency 'liquid', "~> 3.0"
  spec.add_runtime_dependency 'autoprefixer-rails', "~> 6.0"
  spec.add_runtime_dependency 'premailer', "~> 1.8"
  spec.add_runtime_dependency 'nokogiri', '~> 1.4'
  spec.add_runtime_dependency 'sass_paths', "~> 1.0"
  spec.add_runtime_dependency 'webrick', "~> 1.3"
  spec.add_runtime_dependency 'uglifier', "~> 2.7"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"
end
