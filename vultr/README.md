Ubuntu 22.04:

1. Install CloudPanel

curl -sSL https://installer.cloudpanel.io/ce/v2/install.sh | sudo CLOUD=vultr bash

2. Restart MySQL

/etc/init.d/mysql restart

3. Run script:

curl -sSL https://raw.githubusercontent.com/cloudpanel-io/marketplace-scripts/master/vultr/run.sh | sudo bash


Debian 11:

1. Install cloud-init 

cd /tmp/ && wget https://ewr1.vultrobjects.com/cloud_init_beta/cloud-init_debian_latest.deb
apt-get update -y
apt_safe /tmp/cloud-init_debian_latest.deb
apt-get install -y /tmp/cloud-init_debian_latest.deb

2. Remove MySQL

apt -y --purge remove mysql* && 
apt autoremove

3. Install CloudPanel

curl -sSL https://installer.cloudpanel.io/ce/v2/install.sh | sudo CLOUD=vultr bash

4. Restart MySQL

/etc/init.d/mysql restart

5. Run script:

curl -sSL https://raw.githubusercontent.com/cloudpanel-io/marketplace-scripts/master/vultr/run.sh | sudo bash
