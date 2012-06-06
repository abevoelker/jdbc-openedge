# -*- encoding: utf-8 -*-

$LOAD_PATH << File.expand_path('../lib', __FILE__)
require 'jdbc/openedge'
version = Jdbc::OpenEdge::VERSION
Gem::Specification.new do |s|
  s.name = %q{jdbc-openedge}
  s.version = version

  s.authors = ["Abe Voelker"]
  s.date = %q{2012-05-05}
  s.description = %q{Add relevant .jars to your Java $CLASSPATH, install this gem and require 'jdbc/openedge' within JRuby to load the driver.}
  s.email = %q{abe@abevoelker.com}

  s.files = [
    "Rakefile", "README.md", "LICENSE",
    *Dir["lib/**/*"].to_a
  ]

  s.homepage = %q{https://github.com/abevoelker/jdbc-openedge}
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{jruby-openedge}
  s.summary = %q{OpenEdge JDBC driver loader.}
end
