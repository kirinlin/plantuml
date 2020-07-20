FROM jetty:9.4.30-jre11
LABEL version="1.2020.15" maintainer="Kirin Lin"

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends graphviz fonts-wqy-zenhei && \
    apt-get clean

USER jetty

# plantuml v1.2020.15
RUN wget http://sourceforge.net/projects/plantuml/files/plantuml.war/download -O /var/lib/jetty/webapps/plantuml.war
