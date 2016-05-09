# -*- encoding: utf-8 -*-
# stub: activeadmin-translate 0.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "activeadmin-translate"
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Michael Kessler"]
  s.date = "2012-11-16"
  s.description = "Translate your models in ActiveAdmin with Globalize3."
  s.email = ["michi@netzpiraten.ch"]
  s.homepage = "https://github.com/netzpirat/activeadmin-translate"
  s.rubygems_version = "2.5.1"
  s.summary = "Translate models with ActiveAdmin."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activeadmin>, [">= 0"])
      s.add_runtime_dependency(%q<globalize3>, [">= 0"])
      s.add_runtime_dependency(%q<railties>, [">= 0"])
    else
      s.add_dependency(%q<activeadmin>, [">= 0"])
      s.add_dependency(%q<globalize3>, [">= 0"])
      s.add_dependency(%q<railties>, [">= 0"])
    end
  else
    s.add_dependency(%q<activeadmin>, [">= 0"])
    s.add_dependency(%q<globalize3>, [">= 0"])
    s.add_dependency(%q<railties>, [">= 0"])
  end
end
