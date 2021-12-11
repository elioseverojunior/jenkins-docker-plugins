FROM docker:20.10.11-dind as docker

FROM jenkins/jenkins:lts-alpine

USER root

RUN apk --no-cache add shadow

COPY --from=docker /usr/local/bin/docker /usr/local/bin/docker
COPY plugins.txt /usr/share/jenkins/plugins.txt

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
RUN adduser jenkins ping\
 && addgroup staff\
 && usermod -g staff -aG jenkins jenkins

USER jenkins