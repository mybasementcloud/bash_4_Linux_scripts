#!/bin/bash
#

echo
echo 'Enable cockpit ...'
echo

DATEDTGS=`date +%Y-%m-%d-%H%M%S%Z`

apt install cockpit
echo
systemctl start cockpit
echo
systemctl enable cockpit.socket
echo
systemctl status cockpit

echo
echo 'Enable cockpit completed ...'
echo

exit
