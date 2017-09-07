FROM ubuntu:14.04

ADD install.sh /tmp/install.sh
ADD server.properties /root/server.properties
RUN chmod +x /tmp/install.sh
RUN /tmp/install.sh

EXPOSE 2181 9092

CMD /root/kafka/bin/zookeeper-server-start.sh /root/kafka/config/zookeeper.properties & /root/kafka/bin/kafka-server-start.sh /root/server.properties