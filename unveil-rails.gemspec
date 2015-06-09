lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unveil/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'unveil-rails'
  spec.version       = Unveil::Rails::VERSION
  spec.authors       = ['Luke Morton']
  spec.email         = ['luke@madetech.co.uk']
  spec.summary       = %q{Lazy loaded images for rails}
  spec.homepage      = 'https://github.com/madebymade/unveil-rails'
  spec.license       = 'MIT'

  spec.files         = Dir['{lib,spec}/**/*.rb'] + ['LICENSE', 'README.md']
  spec.test_files    = ['spec']
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '> 4.1.0'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-rails'
end
