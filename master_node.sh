#!/bin/bash

if [ -f /.vagrant_build_done ]; then
    echo "Script already run. Exiting."
    exit
fi

cat > /etc/hosts <<EOF
10.211.55.100   affy-master
10.211.55.101   affy-slave1
10.211.55.102   affy-slave2
EOF

source /vagrant/files/setup.sh
source /vagrant/files/install_hadoop.sh
source /vagrant/files/install_zookeeper.sh

chown -R vagrant:vagrant $BASE_DIR


##########
#$HBASE_DIR/hadoop/bin/hadoop namenode -format
#$HBASE_DIR/hadoop/bin/start-dfs.sh
#pushd $ZBASE_DIR/zookeeper; ./bin/zkServer.sh start; popd


#$HBASE_DIR/hadoop/bin/hadoop fs -mkdir /user/vagrant
#$HBASE_DIR/hadoop/bin/hadoop fs -mkdir /user/accumulo

#source ./install-zookeeper.sh
#source ./install-accumulo-1.4.2.sh
#source ./start-all.sh

# Do not let this run again
touch /.vagrant_build_done
