export IP=`hostname -i`
sed -i -e "s/%zookeeper%/$ZK_PORT_2181_TCP_ADDR/g" $STORM_HOME/conf/storm.yaml
sed -i -e "s/%nimbus%/$IP/g" $STORM_HOME/conf/storm.yaml

echo "storm.local.hostname: `hostname -i`" >> $STORM_HOME/conf/storm.yaml

until nc -z $ZK_PORT_2181_TCP_ADDR 2181; do
    echo "$(date) - waiting for zookeeper..."
    sleep 1
done

supervisord
