# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rtfd/version'

Gem::Specification.new do |gem|
  gem.name          = "rtfd"
  gem.version       = Rtfd::VERSION
  gem.authors       = ["Alexander Logunov"]
  gem.email         = ["unlovedru@gmail.com"]
  gem.description   = "Rdft is a Sinatra application which serves github Post-Receive Hooks, updating repositores and shows documentation for it with yard. Rtfd is provided as Rack application."
  gem.summary       = "Automatized documentation server based on yard"
  gem.homepage      = "https://github.com/BrandyMint/rtfd"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'sinatra', '1.3.3'
  gem.add_dependency 'yard', '0.8.3'
  gem.add_dependency 'redcarpet', '2.2.1'

end
