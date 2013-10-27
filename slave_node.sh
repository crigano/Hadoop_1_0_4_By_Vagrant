#!/bin/bash

export HOSTNAME=`hostname`

cat > /etc/hosts <<EOF
10.211.55.100   affy-master
10.211.55.101   affy-slave1
10.211.55.102   affy-slave2
EOF

source /vagrant/files/setup.sh
source /vagrant/files/install_hadoop.sh

chown -R vagrant:vagrant $BASE_DIR
