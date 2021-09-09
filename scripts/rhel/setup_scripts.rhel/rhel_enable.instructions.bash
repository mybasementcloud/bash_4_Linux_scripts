#
# Execute these operations after loading the setup files
#

# we assume all the files are in the folder currently holding location (pwd)
#

sudo chmod 777 *.sh
sudo chmod 777 *.bash

sudo ./rhel_enable_cockpit.sh
sudo ./rhel_enable_ansiblet.sh
