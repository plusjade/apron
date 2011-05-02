# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "apron"
  s.version     = "0.0.6"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jade Dominguez"]
  s.email       = ["jade@ownlocal.com"]
  s.homepage    = "http://github.com/plusjade/apron"
  s.summary     = "Keeping stuff neat."
  s.description = "organization helpers for javascript and css"
 
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "apron"
 
  s.add_development_dependency "rspec"
 
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md)
  s.require_path = 'lib'
end