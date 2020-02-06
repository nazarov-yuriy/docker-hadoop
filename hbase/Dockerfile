FROM bde2020/hadoop-base:2.0.0-hadoop3.2.1-java8

HEALTHCHECK CMD curl -f http://localhost:16010/ || exit 1

ENV HBASE_VERSION 2.2.3
ENV HBASE_URL https://www.apache.org/dist/hbase/$HBASE_VERSION/hbase-$HBASE_VERSION-bin.tar.gz

RUN set -x \
    && curl -O https://dist.apache.org/repos/dist/release/hbase/KEYS \
    && gpg --import KEYS \
    && curl -fSL "$HBASE_URL" -o /tmp/hbase.tar.gz \
    && curl -fSL "$HBASE_URL.asc" -o /tmp/hbase.tar.gz.asc \
    && gpg --verify /tmp/hbase.tar.gz.asc \
    && tar -xvf /tmp/hbase.tar.gz -C /opt/ \
    && rm /tmp/hbase.tar.gz*

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 16010

CMD ["/run.sh"]

