# -*- encoding: utf-8 -*-
require File.expand_path('../lib/vmerize/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Gareth Rushgrove"]
  gem.email         = ["gareth@morethanseven.net"]
  gem.homepage      = 'https://github.com/garethr/vmerize'
  gem.summary       = 'Run your local Chef recipes against a remote machine. Quickly.'
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "vmerize"
  gem.require_paths = ["lib"]
  gem.version       = Vmerize::VERSION

  gem.add_dependency('net-ssh')
  gem.add_dependency('gli')
  gem.add_dependency('highline')
  gem.add_development_dependency('rake')
  gem.add_development_dependency('rdoc')
end
