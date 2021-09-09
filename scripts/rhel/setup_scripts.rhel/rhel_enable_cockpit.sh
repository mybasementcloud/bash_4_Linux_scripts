#!/bin/bash
#

echo
echo 'Enable cockpit ...'
echo

DATEDTGS=`date +%Y-%m-%d-%H%M%S%Z`

sudo systemctl enable --now cockpit.socket

echo
echo 'Enable cockpit completed ...'
echo

exit
