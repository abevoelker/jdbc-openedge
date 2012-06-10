# jdbc-openedge

This gem abstracts away the `require` statements for loading the Progress
DataDirect OpenEdge JDBC client drivers.  It's useful for supporting
multiple versions of OpenEdge that have differing .jar file loading
requirements.

Unfortunately, the drivers themselves cannot be stored in this gem as
they are proprietary. They can typically be found in an OpenEdge
installation directory under `$DLC/java`.

## Usage

Add the necessary .jar files to your Java `$CLASSPATH`, and then use

    require 'jdbc/openedge'

to make the driver accessible to JDBC code running in JRuby.

## OpenEdge Versions Supported

The following OE versions are currently supported:

<table>
  <tr>
    <th>OE Version</th>
    <th>.jar files required in <code>$CLASSPATH</code></th>
  </tr>
  <tr>
    <td>10.2B</td>
    <td>
      <ul>
        <li><code>openedge.jar</code></li>
        <li><code>pool.jar</code><strong><sup>1</sup></strong></li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>10.1C</td>
    <td>
      <ul>
        <li><code>base.jar</code></li>
        <li><code>openedge.jar</code></li>
        <li><code>util.jar</code></li>
      </ul>
    </td>
  </tr>
</table>

**<sup>1</sup>** The released 10.2B gem requires `pool.jar`, even
though technically it shouldn't be required to load the DataDirect
JDBC driver. This was a mistake on my part, which cannot be undone
for the 10.2B gem version as RubyGems gem versions are permanent.
A simple workaround if you don't have `pool.jar` would be to
just use a blank file, e.g.
`cd <somewhere in $CLASSPATH>; touch pool.jar`.

Support for other versions can be done on an as-needed basis, if
anyone else besides me ever uses this gem (pull requests accepted).