# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'bitcoin/config'

Gem::Specification.new do |s|
  s.name        = "bitcoin-ruby-config"
  s.version     = Bitcoin::Config::VERSION
  s.authors     = ["Marius Hanne"]
  s.email       = ["marius.hanne@sourceagency.org"]
  s.summary     = %q{simple helpers for reading options from config files}
  s.description = %q{used by some bitcoin-ruby tools}
  s.homepage    = "https://github.com/mhanne/bitcoin-ruby-config"
  s.license     = "MIT"

  # s.rubyforge_project = "bitcoin-ruby-config"

  s.files         = `git ls-files`.split("\n")

  s.add_dependency "bitcoin-ruby"
end
