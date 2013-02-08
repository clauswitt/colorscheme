# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'colorscheme/version'

Gem::Specification.new do |gem|
  gem.name          = "colorscheme"
  gem.version       = Colorscheme::VERSION
  gem.authors       = ["Claus Witt"]
  gem.email         = ["claus@wittnezz.dk"]
  gem.description   = %q{Create colorschemes from known values}
  gem.summary       = %q{Given a source - a website, and image or a color - the gem returns a colorscheme}
  gem.homepage      = "http://clauswitt.com/gems/colorscheme"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency('color', '~> 1.4.1')
  gem.add_dependency('rmagick', '~> 2.13.1')
  gem.add_development_dependency('rspec')
end
