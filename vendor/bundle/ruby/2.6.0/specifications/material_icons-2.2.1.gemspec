# -*- encoding: utf-8 -*-
# stub: material_icons 2.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "material_icons".freeze
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Angel M Miguel".freeze]
  s.date = "2017-02-27"
  s.description = "Add Google Material Icons in your Rails projects easily. It is a library with +900 icons ;)".freeze
  s.email = "angel@laux.es".freeze
  s.homepage = "http://irb.rocks".freeze
  s.licenses = ["MIT".freeze, "Apache-2.0".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A simple Rails wrapper for Google Material Icons".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.2"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<capybara>.freeze, ["~> 2.4.4"])
      s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.8.2"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.10.3"])
      s.add_development_dependency(%q<pry-nav>.freeze, ["~> 0.2.4"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.2"])
      s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.0"])
      s.add_dependency(%q<capybara>.freeze, ["~> 2.4.4"])
      s.add_dependency(%q<coveralls>.freeze, ["~> 0.8.2"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.10.3"])
      s.add_dependency(%q<pry-nav>.freeze, ["~> 0.2.4"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.2"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.0"])
    s.add_dependency(%q<capybara>.freeze, ["~> 2.4.4"])
    s.add_dependency(%q<coveralls>.freeze, ["~> 0.8.2"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.10.3"])
    s.add_dependency(%q<pry-nav>.freeze, ["~> 0.2.4"])
  end
end
