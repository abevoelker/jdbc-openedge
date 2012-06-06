# jdbc-openedge

* https://github.com/abevoelker/jdbc-openedge

## DESCRIPTION:

This gem abstracts away the `require` statements for loading the Progress
DataDirect OpenEdge JDBC client drivers.  Unfortunately, the drivers
themselves cannot be stored in this gem as they are proprietary. They can
normally be found in an OpenEdge installation directory.

Add the .jar files to your Java `$CLASSPATH`, and then use

    require 'jdbc/openedge'

to make the driver accessible to JDBC code running in JRuby.

