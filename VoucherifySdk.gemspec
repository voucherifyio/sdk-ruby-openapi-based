# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "VoucherifySdk/version"

Gem::Specification.new do |s|
  s.name        = "VoucherifySdk"
  s.version     = VoucherifySdk::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['pawelrychlik']
  s.email       = ['pawel.rychlik@rspective.pl']

  s.summary       = %q{Ruby SDK for Voucherify. More info on http://www.voucherify.io}
  s.homepage      = 'https://github.com/voucherifyio/sdk-ruby-openapi-based'
  s.license       = 'MIT'
  s.required_ruby_version = ">= 2.7"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find __tests__/spec/*`.split("\n")
  s.require_paths = ["lib"]
end
