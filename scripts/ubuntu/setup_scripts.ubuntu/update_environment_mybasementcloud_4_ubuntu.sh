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
# SCRIPT  Update the installed MyBasementCloud environment after update from GitHub for bash_4_Linux_scripts - Ubuntu
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
echo 'Configure Environment MyBasementCloud for '${LinuxTargetEnvironment}' Linux ...'
echo

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

DATEDTGS=`date +%Y-%m-%d-%H%M%S%Z`
DistroExt=${LinuxDistroExtension}


#-------------------------------------------------------------------------------
# Setup Customer '__customer' working folder structure
#-------------------------------------------------------------------------------

#export customerfolderroot=/home
export customerfolderroot=
export customerfoldername=__customer
export customerfolder=${customerfolderroot}/${customerfoldername}

#sudo mkdir ${customerfolder}
#sudo mkdir ${customerfolder}/_scripts
#sudo mkdir ${customerfolder}/_scripts/bash_4_linux
#sudo mkdir ${customerfolder}/_tools
#sudo mkdir ${customerfolder}/download
#sudo mkdir ${customerfolder}/git
#sudo mkdir ${customerfolder}/linux_devops
#sudo mkdir ${customerfolder}/linux_devops/Change_Log
#sudo mkdir ${customerfolder}/linux_devops/dump
#sudo mkdir ${customerfolder}/linux_devops/Reference
#sudo mkdir ${customerfolder}/linux_devops/scripts
#sudo mkdir ${customerfolder}/linux_devops
#sudo mkdir ${customerfolder}/skel.files
#sudo mkdir ${customerfolder}/sudoers.d.backup

sudo chmod -vR 777 ${customerfolder}
sudo chown -vhR root:adm ${customerfolder}

#-------------------------------------------------------------------------------
# Figure out where we are in the folder structure
#-------------------------------------------------------------------------------

curdir=`pwd`
updir=$(dirname "${curdir}")

#-------------------------------------------------------------------------------
# Copy distribution specific files to standard file lcoations
#-------------------------------------------------------------------------------

echo

sourcedir=${updir}/sudoers.d.backup${DistroExt}
if [ -d "${sourcedir}" ] ; then
    # Handle copy of Distro specific files to __customer folder
    echo 'Updating '${customerfolder}/sudoers.d.backup/' with '${sourcedir}/
    cp ${sourcedir}/winscp${DistroExt} ${customerfolder}/sudoers.d.backup/winscp
else
    echo 'Where are we?  '${curdir}
    echo 'Not finding '${sourcedir}' !!!'
    exit
fi

sourcedir=${updir}/etc_skel_scripts${DistroExt}
if [ -d "${sourcedir}" ] ; then
    # Handle copy of Distro specific files to __customer folder
    echo 'Updating '${customerfolder}/skel.files/' with '${sourcedir}/
    cp ${sourcedir}/.bash_aliases${DistroExt} ${customerfolder}/skel.files/.bash_aliases
    cp ${sourcedir}/.private_bash_config${DistroExt} ${customerfolder}/skel.files/.private_bash_config
else
    echo 'Where are we?  '${curdir}
    echo 'Not finding '${sourcedir}' !!!'
    exit
fi

sudo chmod -vR 777 ${customerfolder}/
sudo chown -vhR root:adm ${customerfolder}/

echo

#-------------------------------------------------------------------------------
# Setup sudoers.d file for WinSCP
#-------------------------------------------------------------------------------

cd /etc/sudoers.d/
ll
sudo chmod 777 winscp
sudo rm winscp
ll
ll ${customerfolder}/sudoers.d.backup/
sudo cp ${customerfolder}/sudoers.d.backup/winscp ./winscp
ll
sudo chmod 440 winscp
ll

cd ${customerfolder}


#-------------------------------------------------------------------------------
# Setup current admins .bash_aliases
#-------------------------------------------------------------------------------

cd ~
cp ${customerfolder}/skel.files/.bash_aliases ./.bash_aliases
cp ${customerfolder}/skel.files/.private_bash_config ./.private_bash_config

sudo chmod -v 777 ./.bash_aliases
sudo chown -vh ${USER}:${USER} ./.bash_aliases
sudo chmod -v 777 ./.private_bash_config
sudo chown -vh ${USER}:${USER} ./.private_bash_config

source .bash_aliases

#-------------------------------------------------------------------------------
# Setup root .bash_aliases
#-------------------------------------------------------------------------------

sudo cp ${customerfolder}/skel.files/.bash_aliases /root/.bash_aliases
sudo cp ${customerfolder}/skel.files/.private_bash_config /root/.private_bash_config

sudo chmod -v 777 /root/.bash_aliases
sudo chown -vh root:root /root/.bash_aliases
sudo chmod 777 /root/.private_bash_config
sudo chown -v -vh root:root /root/.private_bash_config




#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

echo
echo 'Configure Environment MyBasementCloud for Ubuntu Linux ...'
echo

exit
