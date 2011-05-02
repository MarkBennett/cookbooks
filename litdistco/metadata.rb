maintainer       "Burmis Studio"
maintainer_email "mark@burmis.ca"
license          "Apache 2.0"
description      "Provisions infrastructure for a LitDistCo Sales web application node"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1.0"
depends "apache2"
supports "ubuntu"
recipe "litdistco", "Provisions infrastructure for a LitDistCo Sales web application node."
