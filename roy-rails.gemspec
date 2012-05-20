$:.push File.expand_path("../lib", __FILE__)
require "roy/rails/version"

Gem::Specification.new do |s|
  s.name        = "roy-rails"
  s.version     = Roy::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.homepage    = "http://github.com/tmcgilchrist/roy-rails"
  s.summary     = "Roy adapter for the Rails asset pipeline."

  s.author      = "Tim McGilchrist"
  s.email       = "timmcgil@gmail.com"

  s.description = "Roy adapter for the Rails asset pipeline."

  s.add_runtime_dependency 'roy-lang',      '>= 0.0.1'
  s.add_runtime_dependency 'railties',      '~> 3.1'
  s.add_runtime_dependency 'actionpack',    '~> 3.1'
  s.add_runtime_dependency 'sprockets',     '~> 2.1'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
