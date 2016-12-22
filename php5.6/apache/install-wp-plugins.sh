#! /bin/bash

# Must run as www-data

#Todo install and activate plugins with wp-cli (http://wp-cli.org/)
if $(wp core is-installed); then
  wp plugin install https://downloads.wordpress.org/plugin/h5p.1.7.7.zip --activate
  wp plugin install https://downloads.wordpress.org/plugin/wp-h5p-xapi.zip --activate
fi

