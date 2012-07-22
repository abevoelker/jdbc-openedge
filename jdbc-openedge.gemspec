# -*- encoding: utf-8 -*-
require File.expand_path("../lib/jdbc/openedge/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'jdbc-openedge'
  s.version     = Jdbc::OpenEdge::VERSION
  s.platform    = 'java'
  s.authors     = ['Abe Voelker']
  s.email       = 'abe@abevoelker.com'
  s.date        = '2012-07-22'
  s.homepage    = 'https://github.com/abevoelker/jdbc-openedge'
  s.summary     = 'OpenEdge JDBC driver loader.'
  s.description = %q{Add relevant .jars to your Java $CLASSPATH, install this gem and require 'jdbc/openedge' within JRuby to load the driver.}

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project         = 'jdbc-openedge'

  s.add_development_dependency "bundler", ">= 1.0.0"

  s.add_dependency "jdbc-openedge-internal", "~> 10.2.1.0"

  s.files        = Dir["{lib}/**/*.rb", "LICENSE", "*.md"]
  s.require_path = 'lib'
end
