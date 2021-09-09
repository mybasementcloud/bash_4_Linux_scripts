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
# SCRIPT  Enable and Install Terraform - Ubuntu
#
#
ScriptDate=2021-09-08
ScriptVersion=00.01.00
ScriptRevision=005
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
echo 'Enable terraform ...'
echo

DATEDTGS=`date +%Y-%m-%d-%H%M%S%Z`

# Install terraform
#
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
echo
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
echo
sudo apt install terraform
echo

echo 'Check terraform status ...'

apt policy terraform

echo
echo 'Enable terraform completed ...'
echo

exit
