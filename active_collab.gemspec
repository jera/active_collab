# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


require 'active_collab/version'

Gem::Specification.new do |gem|
  gem.name          = "active_collab"
  gem.version       = ActiveCollab::VERSION
  gem.authors       = ["Marcos Beirigo", "Diogo Soares"]
  gem.email         = ["marcosbeirigo@gmail.com", "diogo@jera.com.br"]
  gem.description   = "activecollab ruby"
  gem.summary       = "activecollab ruby"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency('httparty', '>= 0.9.0')
end
