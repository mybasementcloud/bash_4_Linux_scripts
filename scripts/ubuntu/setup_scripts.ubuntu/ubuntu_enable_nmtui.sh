#!/bin/bash
#
# (C) 2016-2021 Eric James Beasley, @mybasementcloud, https://github.com/mybasementcloud/bash_4_linux_scripts
#
# ALL SCRIPTS ARE PROVIDED AS IS WITHOUT EXPRESS OR IMPLIED WARRANTY OF FUNCTION OR POTENTIAL FOR 
# DAMAGE Or ABUSE.  AUTHOR DOES NOT ACCEPT ANY RESPONSIBILITY FOR THE USE OF THESE SCRIPTS OR THE 
# RESULTS OF USING THESE SCRIPTS.  USING THESE SCRIPTS STIPULATES A CLEAR UNDERSTANDING OF RESPECTIVE
# TECHNOLOGIES AND UNDERLYING PROGRAMMING CONCEPTS AND STRUCTURES AND IMPLIES CORRECT IMPLEMENTATION
# OF RESPECTIVE BASELINE TECHNOLOGIES FOR PLATFORM UTILIZING THE SCRIPTS.  THIRD PARTY LIMITATIONS
# APPLY WITHIN THE SPECIFICS THEIR RESPECTIVE UTILIZATION AGREEMENTS AND LICENSES.  AUTHOR DOES NOT
# AUTHORIZE RESALE, LEASE, OR CHARGE FOR UTILIZATION OF THESE SCRIPTS BY ANY THIRD PARTY.
#
# SCRIPT  [.bash_aliases] Alias commands and variables configuration for bash shell launch - Ubuntu
#
#
ScriptDate=2021-09-08
ScriptVersion=00.01.00
ScriptRevision=000
TemplateVersion=00.01.00
TemplateLevel=001
SubScriptsLevel=001
SubScriptsVersion=0.01.00
LinuxTargetEnvironment=Ubuntu
LinuxDistroExtension=.ubuntu
#


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

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
