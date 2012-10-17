# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rtfd/version'

Gem::Specification.new do |gem|
  gem.name          = "rtfd"
  gem.version       = Rtfd::VERSION
  gem.authors       = ["Alexander Logunov"]
  gem.email         = ["unlovedru@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('thin')
  gem.add_dependency('sinatra')
  gem.add_dependency('yard')
  gem.add_dependency('redcarpet')

end
