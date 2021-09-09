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
echo 'Enable Docker ...'
echo

DATEDTGS=`date +%Y-%m-%d-%H%M%S%Z`

# Check Ubuntu version:
#
lsb_release -a


#Install Docker
#
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04
# Also input from others

# Update and Upgrade Ubuntu Packages
#
sudo apt update
sudo apt upgrade
echo

# (Probably not there but check and remove if so)
#
sudo apt remove docker docker-engine docker.io containerd runc 
echo

# Install infrastructure to fetch docker
#
#sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release
#sudo apt install apt-transport-https ca-certificates curl software-properties-common
sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release software-properties-common
echo

# Get Official Docker Cert/Key
#
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo

# Use official Docker Repository
#
#echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo add-apt-repository "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu focal stable"
echo

# Update Ubuntu Packages
#
sudo apt update
echo

# Install Docker Ubuntu Packages
#
#apt-cache policy docker-ce
apt-cache policy docker-ce docker-ce-cli containerd.io
sudo apt install docker-ce docker-ce-cli containerd.io
#sudo apt install docker-ce
echo

# Check status of docker installation
#
sudo systemctl status docker
echo

# test installation of docker
sudo docker run hello-world

# configure for sudo-less operation by docker group
sudo groupadd docker
sudo usermod -aG docker $USER
#sudo usermod -aG docker adminscp
#newgrp docker
su - ${USER}
id -nG


# test sudo-less operation of docker
docker run hello-world

echo
echo 'Enable Docker completed ...'
echo

exit
