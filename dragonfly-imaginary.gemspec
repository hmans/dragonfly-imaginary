# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dragonfly-imaginary/version'

Gem::Specification.new do |gem|
  gem.name          = "dragonfly-imaginary"
  gem.version       = Dragonfly::Imaginary::VERSION
  gem.authors       = ["Hendrik Mans"]
  gem.email         = ["hendrik@mans.de"]
  gem.description   = %q{Dragonfly plugin for Imaginary.}
  gem.summary       = %q{Dragonfly plugin for Imaginary.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'imaginary', '>= 0.2.0'
end
