# -*- encoding: utf-8 -*-
# stub: iex-ruby-client 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "iex-ruby-client".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Doubrovkine".freeze]
  s.date = "2022-07-24"
  s.email = "dblock@dblock.org".freeze
  s.homepage = "http://github.com/dblock/iex-ruby-client".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.4.19".freeze
  s.summary = "IEX Finance API Ruby client with support for retrieving stock quotes.".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<faraday>.freeze, [">= 0.17"])
  s.add_runtime_dependency(%q<faraday_middleware>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<hashie>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<money>.freeze, ["~> 6.0"])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10"])
  s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
  s.add_development_dependency(%q<rubocop>.freeze, ["= 0.75.0"])
  s.add_development_dependency(%q<vcr>.freeze, [">= 0"])
  s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
end
