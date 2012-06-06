module Jdbc
  module OpenEdge
    VERSION = "10.1C"
  end
end

if RUBY_PLATFORM =~ /java/
  require 'base.jar'
  require 'openedge.jar'
  require 'util.jar'
elsif $VERBOSE
  warn "jdbc-OpenEdge is only for use with JRuby!"
end
