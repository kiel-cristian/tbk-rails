# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tbk-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "tbk-rails"
  gem.version       = Tbk::Rails::VERSION::GEM
  gem.authors       = ["Cristian Carreño Medina", "Gonzalo Bulnes Guilpain" ]
  gem.email         = ["kiel@acid.cl", "gonzalo@acid.cl"]
  gem.description   = %q{Provides TBK integration with Rails}
  gem.summary       = %q{Details at tbk: http://sagmor.com/tbk }
  gem.homepage      = "https://github.com/kiel-cristian/tbk-rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "tbk", "~> #{Tbk::Rails::VERSION::TBK}"}
end
