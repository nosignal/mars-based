# Pre-install packages for mars
FROM openjdk:8-jre-slim

RUN apt update && \
    apt install -y iproute curl python-pycurl collectd && \
    apt install -y scapy python-configparser python-requests && \
    curl -O http://mirrors.thzhost.com/elastic-6.x/apt/pool/main/f/filebeat/filebeat-6.4.1-amd64.deb && \
    dpkg -i filebeat-6.4.1-amd64.deb && \
    rm -rf /var/lib/apt/lists/* && \
    unlink filebeat-6.4.1-amd64.deb

