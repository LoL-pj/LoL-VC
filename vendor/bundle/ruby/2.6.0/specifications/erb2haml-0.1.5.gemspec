# -*- encoding: utf-8 -*-
# stub: erb2haml 0.1.5 ruby lib

Gem::Specification.new do |s|
  s.name = "erb2haml".freeze
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Leung".freeze]
  s.date = "2013-04-20"
  s.description = "erb2haml gives Rails simple rake tasks to convert all ERB view templates to Haml.".freeze
  s.email = ["david@davidslab.com".freeze]
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze, "CHANGELOG.md".freeze]
  s.files = ["CHANGELOG.md".freeze, "LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/dhl/erb2haml".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "ERB to Haml view templates conversion for Rails.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<html2haml>.freeze, [">= 0"])
    else
      s.add_dependency(%q<html2haml>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<html2haml>.freeze, [">= 0"])
  end
end
