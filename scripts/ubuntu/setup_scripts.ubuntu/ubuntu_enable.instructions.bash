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
# INSTRUCTIONS - Configure setup and enablement scripts - Ubuntu
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

#
# Execute these operations after loading the setup files
#

# we assume all the files are in the folder currently holding location (pwd)
#

sudo chmod 777 *.sh
sudo chmod 777 *.bash

# Setup Packs for specific missions:

# For Basic Ubuntu installations
sudo ./setup_ubuntu_basic.sh

# For Pi-hole Ubuntu installations
sudo ./setup_ubuntu_pi-hole.sh

# For DevOps Ubuntu installations with Ansible, Terraform, and Docker
sudo ./setup_ubuntu_devops_w_docker.sh

# For DevOps Ubuntu installations with Ansible and Terraform
sudo ./setup_ubuntu_devops.sh

# For Docker Ubuntu installations
sudo ./setup_ubuntu_docker.sh


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# Manually Enable Functions:
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# For all Ubuntu installations
#-------------------------------------------------------------------------------
sudo ./ubuntu_enable_cockpit.sh
sudo ./ubuntu_enable_nmtui.sh

sudo ./ubuntu_enable_basics.sh

#-------------------------------------------------------------------------------
# For all Ubuntu installations needing Orchestration and Automation tools
#-------------------------------------------------------------------------------
sudo ./ubuntu_enable_ansible.sh
sudo ./ubuntu_enable_terraform.sh

#-------------------------------------------------------------------------------
# For all Ubuntu installations needing Docker
#-------------------------------------------------------------------------------
sudo ./ubuntu_enable_docker.sh

#-------------------------------------------------------------------------------
# For all Ubuntu installations of Pi-hole
#-------------------------------------------------------------------------------
sudo ./ubuntu_enable_pi-hole.sh


