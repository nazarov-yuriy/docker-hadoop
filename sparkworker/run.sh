#!/bin/bash

/opt/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION/sbin/start-slave.sh spark://sparkmaster:7077
tail -f /opt/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION/logs/spark-root-org.apache.spark.deploy.worker.*

