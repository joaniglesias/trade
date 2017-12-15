Trading Drupal
=========

Trading Drupal Website.


To build a platform from the install profile, first grab the distro.make file
from GitHub:

    https://github.com/joaniglesias/trade/blob/master/distro.make

This file does not change very often. It specifies the version of Drupal core
to download and which patches (if any) are required for Drupal core.

Then use Drush make to build the platform, replacing 'trade-drupal' with your
required folder name, and using the --working-copy option if you want to
push changes to the profile back to GitHub:

    drush make distro.make trade-drupal --working-copy --no-gitinfofile

Then use the Drupal installer and select "trade" as the install profile. Or
install using Drush:

    drush si trade --db-url='mysql://user:pass@localhost/dbname' --site-name='trade Drupal Site'  --account-pass='admin_password' -y

Then modify the file folder permissons to allow users to Upload images:

    chmod 777 trade-drupal/sites/default/files/ -R
