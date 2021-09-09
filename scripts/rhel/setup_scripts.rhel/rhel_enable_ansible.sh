#!/bin/bash
#

echo
echo 'Enable ansible ...'
echo

DATEDTGS=`date +%Y-%m-%d-%H%M%S%Z`

sudo yum install ansible
echo

echo 'Check ansible status ...'

ansible all -m ping --ask-pass

echo
echo 'Enable ansible completed ...'
echo

exit
