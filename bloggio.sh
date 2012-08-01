#!/bin/sh
 drush site-install bloggio --db-url=mysql://root:root@localhost/$1 --db-su=root --db-su-pw=root --account-pass=admin -y
drush generate-users 3
drush generate-content --types=blog 30 10
drush generate-content --types=page 4


