#!/bin/bash

/opt/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION/sbin/start-master.sh
tail -f /opt/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION/logs/spark-root-org.apache.spark.deploy.master.*

