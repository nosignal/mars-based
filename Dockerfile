# Pre-install packages for mars
FROM openjdk:8-jre-slim
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install \
    curl \
    collectd \
    iproute \
    python-configparser \
    python-pycurl \
    python-requests \
    scapy \
    -y && \
    curl -sSO https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.4.1-amd64.deb && \
    dpkg -i filebeat-6.4.1-amd64.deb && \
    unlink filebeat-6.4.1-amd64.deb && \
    rm -rf /var/lib/apt/lists/*

