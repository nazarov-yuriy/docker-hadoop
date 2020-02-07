FROM bde2020/hadoop-base:2.0.0-hadoop3.2.1-java8

HEALTHCHECK CMD curl -f http://localhost:8081/ || exit 1

ENV SPARK_VERSION 3.0.0-preview2
ENV HADOOP_VERSION 3.2
ENV SPARK_URL https://www.apache.org/dist/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz

RUN set -x \
    && curl -O https://dist.apache.org/repos/dist/release/spark/KEYS \
    && gpg --import KEYS \
    && curl -fSL "$SPARK_URL" -o /tmp/spark.tar.gz \
    && curl -fSL "$SPARK_URL.asc" -o /tmp/spark.tar.gz.asc \
    && gpg --verify /tmp/spark.tar.gz.asc \
    && tar -xvf /tmp/spark.tar.gz -C /opt/ \
    && rm /tmp/spark.tar.gz*

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 8081

CMD ["/run.sh"]

