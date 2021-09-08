#!/bin/bash
#

echo
echo 'Enable nmtui ...'
echo

DATEDTGS=`date +%Y-%m-%d-%H%M%S%Z`

echo
cat /etc/netplan/00-installer-config.yaml
echo

cp /etc/netplan/00-installer-config.yaml /etc/netplan/00-installer-config.yaml.${DATEDTGS}.bak

echo "  renderer:  NetworkManager" >> /etc/netplan/00-installer-config.yaml

echo
cat /etc/netplan/00-installer-config.yaml
echo

echo
echo 'Accept changes to netplan update !!'
echo
netplan try
echo
netplan apply
echo

ls -alh /etc/netplan/

exit
