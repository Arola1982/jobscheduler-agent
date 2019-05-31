FROM openjdk:11-jdk

MAINTAINER Adam Copley <adam.copley@arola.co.uk>

WORKDIR /opt

RUN curl -o jobscheduler_unix_universal_agent.1.12.8.tar.gz \
  https://download.sos-berlin.com/JobScheduler.1.12/jobscheduler_unix_universal_agent.1.12.8.tar.gz && \
  tar -xvzf jobscheduler_unix_universal_agent.1.12.8.tar.gz && \
  rm -f jobscheduler_unix_universal_agent.1.12.8.tar.gz

WORKDIR /opt/jobscheduler_agent/bin

CMD ./jobscheduler_agent.sh start_docker
