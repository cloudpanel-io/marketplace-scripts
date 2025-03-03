Ubuntu 24.04 and Debian 12:

1. Remove MySQL

apt -y --purge remove mysql* && apt -y autoremove

2. Install CloudPanel

curl -sSL https://installer.cloudpanel.io/ce/v2/install.sh | sudo CLOUD=vultr bash

3. Restart MySQL

/etc/init.d/mysql restart

4. Run script:

curl -sSL https://raw.githubusercontent.com/cloudpanel-io/marketplace-scripts/refs/heads/master/vultr/run.sh | sudo bash

5. Clean System

apt clean && history -c