#!/bin/bash
cd /var/www-shared/test/trade
chmod -R 777 trade-drupal
sudo rm -rf trade-drupal
drush make distro.make trade-drupal --working-copy --no-gitinfofile
cd /var/www-shared/test/trade/trade-drupal
drush si trade --db-url='mysql://root:root@localhost/trade' --site-name='trade Drupal' --account-pass=admin -y
cd /var/www-shared/test/trade
chmod 777 trade-drupal/sites/default/files/ -R
