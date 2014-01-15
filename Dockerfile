# HERITRIX

FROM base
MAINTAINER Raffaele Messuti "raffaele@atomotic.com"

RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-jdk7-installer
RUN mkdir /opt/heritrix
RUN wget -O /tmp/heritrix.tar.gz http://builds.archive.org/maven2/org/archive/heritrix/heritrix/3.2.0/heritrix-3.2.0-dist.tar.gz
RUN tar -C /opt -xvf /tmp/heritrix.tar.gz

ADD heritrix-start.sh /usr/local/bin/heritrix-start.sh

EXPOSE 8443

CMD /usr/local/bin/heritrix-start.sh

