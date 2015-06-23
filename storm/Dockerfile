FROM gschmutz/storm-base:0.10.0-beta1

MAINTAINER guido.schmutz@trivadis.com 

RUN wget -q -O - http://mirrors.sonic.net/apache/storm/apache-storm-0.10.0-beta1/apache-storm-0.10.0-beta1.tar.gz | tar -xzf - -C /opt

# get the 2.22 version of Kryo so it is compatible with topologies needing 2.22 (such as Titan)
#RUN wget http://central.maven.org/maven2/com/esotericsoftware/kryo/kryo/2.22/kryo-2.22.jar
#RUN mv kryo-2.22.jar /opt/apache-storm-0.9.5/lib/
#RUN rm /opt/apache-storm-0.9.5/lib/kryo-2.21.jar

ENV STORM_HOME /opt/apache-storm-0.10.0-beta1
RUN groupadd storm; useradd --gid storm --home-dir /home/storm --create-home --shell /bin/bash storm; chown -R storm:storm $STORM_HOME; mkdir /var/log/storm ; chown -R storm:storm /var/log/storm

RUN ln -s $STORM_HOME/bin/storm /usr/bin/storm

ADD storm.yaml $STORM_HOME/conf/storm.yaml
ADD cluster.xml $STORM_HOME/logback/cluster.xml
ADD config-supervisord.sh /usr/bin/config-supervisord.sh
ADD start-supervisor.sh /usr/bin/start-supervisor.sh 

RUN echo [supervisord] | tee -a /etc/supervisor/supervisord.conf ; echo nodaemon=true | tee -a /etc/supervisor/supervisord.conf
