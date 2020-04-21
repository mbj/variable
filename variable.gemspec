# frozen_string_literal: true

Gem::Specification.new do |gem|
  gem.name        = 'variable'
  gem.version     = '0.0.1'
  gem.authors     = ['Markus Schirp']
  gem.email       = ['mbj@schirp-dso.com']
  gem.description = 'Mutable and immutable concurrency variable'
  gem.summary     = 'A port from Haskells MVar and IVar types'
  gem.homepage    = 'https://github.com/mbj/variable'
  gem.licenses    = 'MIT'

  gem.require_paths = %w[lib]

  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- spec/unit`.split("\n")
  gem.extra_rdoc_files = %w[LICENSE]

  gem.add_runtime_dependency('equalizer', '~> 0.0.11')
end
