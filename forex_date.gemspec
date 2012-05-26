# -*- encoding: utf-8 -*-
require File.expand_path('../lib/forex_date/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Javier Vidal"]
  gem.email         = ["javier.vidal@bolsanova.com"]
  gem.description   = <<-END_OF_DESC
A forex week begins when the Wellington/Sydney forex markets open (Sun 5pm EST) and closes when the New York forex market closes (Fri 5pm EST).

In order to calculate daily OHCL bars, the around the clock forex week can be split in 5 days. See documentation for details.
  END_OF_DESC
  gem.summary       = %q{Calculate the date of the current forex day}
  gem.homepage      = "http://github.com/javiervidal/forex_date"
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "forex_date"
  gem.require_paths = ["lib"]
  gem.version       = ForexDate::VERSION
  gem.add_dependency('tzinfo')
end
