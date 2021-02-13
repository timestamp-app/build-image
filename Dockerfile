FROM node:12.20.1-buster

RUN apt-get update \
    && apt-get -y upgrade

# Sonar Scanner
RUN wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.5.0.2216-linux.zip -O /tmp/sonar.zip \
    && unzip /tmp/sonar.zip -d /home
ENV PATH="/home/sonar-scanner-4.5.0.2216-linux/bin:${PATH}"
