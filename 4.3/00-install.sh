#!/bin/bash

mkdir /system

curl -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz |tar xfz - -C /system

chown -R www-data:www-data /system/wordpress
rm -rf /system/wordpress/wp-content

mkdir /etcd
curl -L  https://github.com/coreos/etcd/releases/download/v2.2.0-rc.0/etcd-v2.2.0-rc.0-linux-amd64.tar.gz |tar xfz - -C /etcd
