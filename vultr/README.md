Ubuntu 22.04:

1. Install CloudPanel

curl -sSL https://installer.cloudpanel.io/ce/v2/install.sh | sudo CLOUD=vultr bash

2. Restart MySQL

/etc/init.d/mysql restart

3. Run script:

curl -sSL https://raw.githubusercontent.com/cloudpanel-io/marketplace-scripts/master/vultr/run.sh | sudo bash

4. Clean System

apt clean && history -c


Debian 11:

1. Remove MySQL

apt -y --purge remove mysql*
apt -y autoremove

2. Install CloudPanel

curl -sSL https://installer.cloudpanel.io/ce/v2/install.sh | sudo CLOUD=vultr bash

3. Restart MySQL

/etc/init.d/mysql restart

4. Run script:

curl -sSL https://raw.githubusercontent.com/cloudpanel-io/marketplace-scripts/master/vultr/run.sh | sudo bash

5. Clean System

apt clean && history -c