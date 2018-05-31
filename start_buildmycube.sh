#!/bin/bash

apt-get -y install jq amqp-tools

wget -O /tmp/get_amqp_output.sh http://gogs/outils-interne/temps_modernes_v1/raw/master/get_amqp_output.sh
wget -O /tmp/read_from_amqp.sh http://gogs/outils-interne/temps_modernes_v1/raw/master/read_from_amqp_koombook.sh
chmod +x /tmp/get_amqp_output.sh
chmod +x /tmp/read_from_amqp.sh

output=$(/tmp/read_from_amqp.sh)

deviceName=$(echo output | jq '.project_name')
timeZone=$(echo output | jq '.timezone')

# Start builMyCube

/var/lib/ansible/local/buildMyCube.sh -n "$deviceName" -t "$timeZone"

wget http://report.bsf-intranet.org/device=$device_hostname/KoomBookFirstInit=Success
