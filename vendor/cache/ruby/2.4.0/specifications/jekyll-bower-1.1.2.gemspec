# -*- encoding: utf-8 -*-
# stub: jekyll-bower 1.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-bower".freeze
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rohan Sakhale".freeze]
  s.date = "2016-10-05"
  s.description = "This plugin helps install bower that helps resolve JavaScript dependencies".freeze
  s.email = "rohansakhale@gmail.com".freeze
  s.homepage = "https://gitlab.com/SaiAshirwadInformatia/Jekyll-Bower".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.13".freeze
  s.summary = "This plugin helps install bower that helps resolve JavaScript dependencies".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.9.0"])
    else
      s.add_dependency(%q<jekyll>.freeze, ["~> 3.2"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.9.0"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, ["~> 3.2"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.9.0"])
  end
end
