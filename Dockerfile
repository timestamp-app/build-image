FROM node:12.20.1-buster

# Sonar Scanner
RUN wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.5.0.2216-linux.zip -O /tmp/sonar.zip \
    && unzip /tmp/sonar.zip -d /home
ENV PATH="/home/sonar-scanner-4.5.0.2216-linux/bin:${PATH}"

# Azure Functions Core Tools
RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.gpg \
    && echo "deb [arch=amd64] https://packages.microsoft.com/debian/10/prod buster main" > /etc/apt/sources.list.d/dotnetdev.list \
    && apt-get -y update \
    && apt-get -y install azure-functions-core-tools-3

# Azure Cli
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
