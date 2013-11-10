# encoding: utf-8

Gem::Specification.new do |gem|
  gem.name        = 'clochard'
  gem.version     = '0.0.0-alpha'
  gem.authors     = [ 'Arne Brasseur' ]
  gem.email       = [ 'arne@arnebrasseur.net' ]
  gem.description = 'Clojure data structures for JRuby'
  gem.summary     = gem.description
  gem.homepage    = 'https://github.com/plexus/clochard'
  gem.license     = 'MIT'

  gem.require_paths    = %w[lib]
  gem.files            = `git ls-files`.split($/)
  gem.test_files       = `git ls-files -- spec`.split($/)
  gem.extra_rdoc_files = %w[README.md]
end
