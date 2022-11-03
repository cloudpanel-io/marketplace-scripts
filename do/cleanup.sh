#!/bin/bash

# Empty files
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
> /var/log/php8.0-fpm.log
> /var/log/php8.1-fpm.log
> /var/log/user.log
> /var/log/auth.log
> /var/log/cloud-init.log
> /var/log/unattended-upgrades/unattended-upgrades-shutdown.log
> /var/log/unattended-upgrades
>
> /var/log/kern.log
> /var/log/ubuntu-advantage-timer.log
> /var/log/ufw.log
> /var/log/cloud-init.log
> /root/.ssh/authorized_keys

apt-get dist-upgrade -y
passwd --lock root