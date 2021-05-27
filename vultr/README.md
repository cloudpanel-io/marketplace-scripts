1. Install cloud-init (currently damaged)

https://www.vultr.com/docs/vultr-marketplace-requirements#Install_cloud_init

cd /tmp
wget https://ewr1.vultrobjects.com/cloud_init_beta/cloud-init_debian_latest.deb
apt-get update -y
apt-get install -y /tmp/cloud-init_debian_latest.deb

2. Uninstall ufw

ufw reset
systemctl disable ufw

3. Install CloudPanel

curl -sSL https://installer.cloudpanel.io/ce/v1/install.sh | sudo CLOUD=vultr bash

4. Restart MySQL

/etc/init.d/mysql restart

2. Run clean-up script:

```
curl -sSL https://raw.githubusercontent.com/cloudpanel-io/marketplace-scripts/master/vultr/run.sh | sudo bash
```