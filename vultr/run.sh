#!/bin/bash

rm -rf /tmp/*
> /var/log/cloud-init.log
> /var/log/alternatives.log
> /var/log/auth.log
> /var/log/bootstrap.log
> /var/log/cloud-init.log
> /var/log/cloud-init-output.log
> /var/log/clp-php-fpm.log
> /var/log/daemon.log
> /var/log/dpkg.log
> /var/log/kern.log
> /var/log/mail.log
> /var/log/php7.1-fpm.log
> /var/log/php7.2-fpm.log
> /var/log/php7.3-fpm.log
> /var/log/php7.4-fpm.log
> /var/log/user.log
> /root/.ssh/authorized_keys
rm /etc/cloud/cloud.cfg.d/100-clp.cfg
sed -i 's/^CLOUDPANEL_URL=.*/CLOUDPANEL_URL="https:\/\/$(curl -s http:\/\/169.254.169.254\/v1\/interfaces\/0\/ipv4\/address):8443"/' /etc/update-motd.d/10-cloudpanel
cloud-init clean

apt -y dist-upgrade
apt -y autoremove
apt clean
history -c