FROM ubuntu:14.04
RUN apt-get update
RUN apt-get -y install dcmtk
VOLUME /tmp/database
COPY dcmqrscp.cfg /home
ENTRYPOINT ["dcmqrscp", "-v", "-d", "--config", "/home/dcmqrscp.cfg"]