sed -i -e "s/%zookeeper%/$ZK_PORT_2181_TCP_ADDR/g" $STORM_HOME/conf/storm.yaml
sed -i -e "s/%nimbus%/$NIMBUS_PORT_6627_TCP_ADDR/g" $STORM_HOME/conf/storm.yaml

echo "storm.local.hostname: `hostname -i`" >> $STORM_HOME/conf/storm.yaml


until nc -z $NIMBUS_PORT_6627_TCP_ADDR 6627; do
    echo "$(date) - waiting for nimbus..."
    sleep 1
done

supervisord
