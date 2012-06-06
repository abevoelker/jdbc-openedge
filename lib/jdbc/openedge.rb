module Jdbc
  module OpenEdge
    VERSION = "10.2B"
  end
end

if RUBY_PLATFORM =~ /java/
  require 'openedge.jar'
  require 'pool.jar'
elsif $VERBOSE
  warn "jdbc-OpenEdge is only for use with JRuby!"
end
