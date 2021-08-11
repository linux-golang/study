FROM harbor.guobb.com/baseimages/jdk:1.8.301 

ENV ZK_VERSION 3.7.0

ADD apache-zookeeper-${ZK_VERSION}-bin.tar.gz /

RUN cd /apache-zookeeper-${ZK_VERSION}-bin && \
      rm -rf \
      *.txt \
      *.xml \
      bin/README.txt \
      bin/*.cmd \
      conf/* \
      contrib \
      dist-maven \
      docs \
      lib/*.txt \
      lib/cobertura \
      lib/jdiff \
      recipes \
      src \
      zookeeper-*.asc \
      zookeeper-*.md5 \
      zookeeper-*.sha1 && \
      rm -rf /tmp/*  
COPY conf  /apache-zookeeper-${ZK_VERSION}-bin/conf/
COPY bin/zkReady.sh /apache-zookeeper-${ZK_VERSION}-bin/bin/
COPY entrypoint.sh /

ENV PATH=/apache-zookeeper-${ZK_VERSION}-bin/bin:${PATH} \
    ZOO_LOG_DIR=/apache-zookeeper-${ZK_VERSION}-bin/log \
    ZOO_LOG4J_PROP="INFO, CONSOLE, ROLLINGFILE" \
    JMXPORT=9010
WORKDIR /apache-zookeeper-${ZK_VERSION}-bin/

ENTRYPOINT ["/entrypoint.sh"]

CMD [ "zkServer.sh", "start-foreground" ]

EXPOSE 2181 2888 3888 9010

