# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dragonfly/gc_data_store/version'

Gem::Specification.new do |spec|
  spec.name          = "dragonfly-gc_data_store"
  spec.version       = Dragonfly::GcDataStore::VERSION
  spec.authors       = ["Michel Pouleijn"]
  spec.email         = ["m.pouleijn@gynzy.com"]
  spec.summary       = %q{Google Cloud data store for Dragonfly}
  spec.description   = %q{Data store for storing Dragonfly content (e.g. images) on GC}
  spec.homepage      = "https://github.com/mpouleijn/dragonfly-gc_data_store"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
