#!/bin/sh

spark=spark-2.3.1-bin-hadoop2.7.tgz
jar=spark-integration_full.jar

echo "Fetching Spark"
if [ -e "$spark" ]; then
	tar -xvf $cass
else
	wget http://apache.claz.org/spark/spark-2.3.1/spark-2.3.1-bin-hadoop2.7.tgz
	tar -xvf $spark
fi

echo "Fetching Jars"
if [ -e "$jar" ]; then
	echo "Already Present"
else
	wget https://dev1.mesos.rccl.com/nexus/repository/linux-bin/spark-integration_full.jar
fi
exit
