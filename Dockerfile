# last build: 22-05-2018 10:40:52
FROM debian:9.4

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       sudo systemd 

RUN apt-get install -y net-tools wget gnupg curl sudo openssh-server cron vim netcat-traditional less

RUN curl -L https://www.opscode.com/chef/install.sh | sudo bash -s -- -v 14.1.12

RUN rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean
