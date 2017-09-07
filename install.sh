#!/usr/bin/env bash

apt-get update
apt-get install wget default-jre-headless -y
mkdir -p /root/Downloads
wget "http://apache.mivzakim.net/kafka/0.11.0.0/kafka_2.11-0.11.0.0.tgz" -O /root/Downloads/kafka.tgz
mkdir -p /root/kafka && cd /root/kafka
tar -xvzf /root/Downloads/kafka.tgz --strip 1