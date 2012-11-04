# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'treehash/version'

Gem::Specification.new do |gem|
  gem.name          = "treehash"
  gem.version       = Treehash::VERSION
  gem.authors       = ["Erich Menge"]
  gem.email         = ["erich.menge@me.com"]
  gem.description   = %q{Calculates the SHA256 tree hash of a file or string.  It also includes a command line tool.}
  gem.summary       = %q{Calculates the SHA256 tree hash of a file or string.  It also includes a command line tool.}
  gem.homepage      = "https://github.com/erichmenge/treehash"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec", "~> 2.0"
  gem.add_development_dependency "rake", ">= 0.8.7"
end
