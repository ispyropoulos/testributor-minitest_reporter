lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'minitest/testributor/version'

Gem::Specification.new do |s|
  s.name             = 'minitest-testributor'
  s.version          = Minitest::Testributor::VERSION
  s.date             = '2015-11-16'
  s.summary          = 'Minitest Testributor'
  s.description      = 'The Minitest reporter for testributor.com'
  s.authors          = ["Dimitris Karakasilis"]
  s.email            = ["dk@testributor.com"]
  s.files            = Dir.glob("{bin,lib}/**/*")
  s.homepage         = 'http://rubygems.org/gems/minitest-testributor'
  s.license          = 'all rights reserved' # TODO
  s.require_path     = 'lib'

  %w(minitest).each { |gem|  s.add_runtime_dependency gem  }
  %w(pry pry-nav minitest-stub_any_instance).each { |gem| s.add_development_dependency gem }
end
