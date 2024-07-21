# Ref: https://hackmamba.io/blog/2022/04/running-docker-in-a-jenkins-container/
FROM jenkins/jenkins:lts
USER root
RUN curl https://get.docker.com > dockerinstall && chmod 777 dockerinstall && ./dockerinstall
USER jenkins


ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

COPY casc.yaml /var/jenkins_home/casc.yaml
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml

RUN jenkins-plugin-cli --plugins -f /usr/share/jenkins/ref/plugins.txt
