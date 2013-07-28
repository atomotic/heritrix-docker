# HERITRIX
# docker run -t -i -p :8443 heritrix /bin/bash


FROM base
MAINTAINER Raffaele Messuti "raffaele@atomotic.com"

RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-jdk7-installer
RUN mkdir /opt/heritrix
RUN wget -O /tmp/heritrix.tar.gz http://builds.archive.org:8080/maven2/org/archive/heritrix/heritrix/3.1.2-SNAPSHOT/heritrix-3.1.2-SNAPSHOT-dist.tar.gz
RUN tar -C /opt -xvf /tmp/heritrix.tar.gz
RUN ln -sf /opt/heritrix-3.1.2-SNAPSHOT /opt/heritrix

ADD heritrix-start.sh /usr/local/bin

EXPOSE 8443

#CMD /opt/heritrix/bin/heritrix -a 123 -b $(hostname -I)
CMD /usr/local/bin/heritrix-start.sh

