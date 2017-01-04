#! /bin/bash
# Must run as www-data
for i in "$@"
do
case $i in
  --url=*)
  URL="${i#*=}"
  ;;
  --port=*)
  PORT="${i#*=}"
  ;;
  --title=*)
  TITLE="${i#*=}"
  ;;
  *)
      # unknown option
  ;;
esac
done

#Todo install and activate plugins with wp-cli (http://wp-cli.org/)
if ! $(wp core is-installed); then
  wp core install --url="${URL}:${PORT}" --title="${TITLE}" \
     --admin_user=admin --admin_password=password1234 --admin_email='admin@example.com'
  wp plugin install https://downloads.wordpress.org/plugin/h5p.1.7.7.zip --activate
  wp plugin install https://downloads.wordpress.org/plugin/wp-h5p-xapi.zip --activate
fi

