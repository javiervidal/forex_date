# -*- encoding: utf-8 -*-
require File.expand_path('../lib/forex_date/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Javier Vidal"]
  gem.email         = ["javier.vidal@bolsanova.com"]
  gem.description   = %q{Calculate the date of the current forex day}
  gem.summary       = %q{Calculate the date of the current forex day}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "forex_date"
  gem.require_paths = ["lib"]
  gem.version       = ForexDate::VERSION
  gem.add_dependency('tzinfo')
end
