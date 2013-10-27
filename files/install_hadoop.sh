export HBASE_DIR=$BASE_DIR/bin

mkdir -p $HBASE_DIR
mkdir -p $BASE_DIR/data/hadoop_tmp_dir
chmod 755 $BASE_DIR/data/hadoop_tmp_dir

tar xfz $VFILES/$HADOOP_VERSION.tar.gz -C $HBASE_DIR
ln -s $HBASE_DIR/$HADOOP_VERSION $HBASE_DIR/hadoop
cp $VFILES/core-site.xml $HBASE_DIR/hadoop/conf/core-site.xml
cp $VFILES/hdfs-site.xml $HBASE_DIR/hadoop/conf/hdfs-site.xml
cp $VFILES/mapred-site.xml $HBASE_DIR/hadoop/conf/mapred-site.xml
cp $VFILES/hadoop-env.sh $HBASE_DIR/hadoop/conf/hadoop-env.sh
cp $VFILES/generic_logger.xml $HBASE_DIR/hadoop/conf
cp $VFILES/monitor_logger.xml $HBASE_DIR/hadoop/conf
cp $VFILES//masters $HBASE_DIR/hadoop/conf/masters
cp $VFILES//slaves $HBASE_DIR/hadoop/conf/slaves
