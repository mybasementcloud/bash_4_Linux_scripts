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
# SCRIPT  [.bash_aliases] Alias commands and variables configuration for bash shell launch - RHEL
#
#
ScriptDate=2021-09-03
ScriptVersion=00.01.00
ScriptRevision=000
TemplateVersion=00.01.00
TemplateLevel=001
SubScriptsLevel=001
SubScriptsVersion=0.01.00
AliasCommandsLevel=015
#

#========================================================================================
#========================================================================================
# start of alias.commands.<action>.<scope>.sh
#========================================================================================
#========================================================================================


#========================================================================================
# Setup standard environment export variables
#========================================================================================


tCLEAR=`tput clear`

tNORM=`tput sgr0`
tBOLD=`tput bold`
tDIM=`tput dim`
tREVERSE=`tput rev`

tULINEs=`tput smul`
tULINEe=`tput rmul`

tSTANDOb=`tput smso`
tSTANDOe=`tput rmso`

WinCols=`tput cols`
WinLines=`tput lines`


#tput setab color  Set ANSI Background color
#tput setaf color  Set ANSI Foreground color
tBLACK=`tput setaf 0`
tRED=`tput setaf 1`
tGREEN=`tput setaf 2`
tYELLOW=`tput setaf 3`
tBLUE=`tput setaf 4`
tMAGENTA=`tput setaf 5`
tCYAN=`tput setaf 6`
tWHITE=`tput setaf 7`
tDEFAULT=`tput setaf 9`

bkBLACK=`tput setab 0`
bkRED=`tput setab 1`
bkGREEN=`tput setab 2`
bkYELLOW=`tput setab 3`
bkBLUE=`tput setab 4`
bkMAGENTA=`tput setab 5`
bkCYAN=`tput setab 6`
bkWHITE=`tput setab 7`
bkDEFAULT=`tput setab 9`


#========================================================================================
#========================================================================================


echo ${tCYAN}'==============================================================================='${tDEFAULT}
echo ${tCYAN}' MyBasementCloud bash 4 Linux RHEL Environment'${tDEFAULT}
echo ${tCYAN}' Scripts :  Version '${ScriptVersion}', Revision '${ScriptRevision}', Level '${AliasCommandsLevel}' from Date '${ScriptDate}${tDEFAULT}
echo ${tCYAN}'==============================================================================='${tDEFAULT}
echo
echo ${tCYAN}'Configuring User Environment...'${tDEFAULT}
echo


#========================================================================================
#========================================================================================


# 2021-08-26
export ENVIRONMENTHELPFILE=${HOME}/environment_help_file.txt

if [ -f ${ENVIRONMENTHELPFILE} ]; then
    rm ${ENVIRONMENTHELPFILE}
fi
touch ${ENVIRONMENTHELPFILE}

# 2021-08-26
export ENVIRONMENTVARSFILE=${HOME}/environment_variables_file.txt

if [ -f ${ENVIRONMENTVARSFILE} ]; then
    rm ${ENVIRONMENTVARSFILE}
fi
touch ${ENVIRONMENTVARSFILE}

echo >> ${ENVIRONMENTHELPFILE}
echo '===============================================================================' >> ${ENVIRONMENTHELPFILE}
echo '===============================================================================' >> ${ENVIRONMENTHELPFILE}
echo 'MyBasementCloud bash 4 Linux RHEL Environment' >> ${ENVIRONMENTHELPFILE}
echo 'Scripts :  Version '${ScriptVersion}', Revision '${ScriptRevision}', Level '${AliasCommandsLevel}' from Date '${ScriptDate} >> ${ENVIRONMENTHELPFILE}
echo '===============================================================================' >> ${ENVIRONMENTHELPFILE}
echo >> ${ENVIRONMENTHELPFILE}

echo '===============================================================================' >> ${ENVIRONMENTHELPFILE}
echo 'User Environment Configuration Variables and Alias Commands' >> ${ENVIRONMENTHELPFILE}
echo '===============================================================================' >> ${ENVIRONMENTHELPFILE}
echo >> ${ENVIRONMENTHELPFILE}

# 2021-06-01

echo >> ${ENVIRONMENTVARSFILE}
echo '===============================================================================' >> ${ENVIRONMENTVARSFILE}
echo '===============================================================================' >> ${ENVIRONMENTVARSFILE}
echo 'MyBasementCloud bash 4 Linux RHEL Environment' >> ${ENVIRONMENTVARSFILE}
echo 'Scripts :  Version '${ScriptVersion}', Revision '${ScriptRevision}', Level '${AliasCommandsLevel}' from Date '${ScriptDate} >> ${ENVIRONMENTVARSFILE}
echo '===============================================================================' >> ${ENVIRONMENTVARSFILE}
echo >> ${ENVIRONMENTVARSFILE}

echo '===============================================================================' >> ${ENVIRONMENTVARSFILE}
echo 'User Environment Configuration Variables' >> ${ENVIRONMENTVARSFILE}
echo '===============================================================================' >> ${ENVIRONMENTVARSFILE}
echo >> ${ENVIRONMENTVARSFILE}

tempENVHELPFILEvars=/var/tmp/environment_help_file.temp.variables.txt
tempENVHELPFILEalias=/var/tmp/environment_help_file.temp.alias.txt

echo '===============================================================================' > ${tempENVHELPFILEvars}
echo 'List Custom User variables set by alias_commands.add.all' >> ${tempENVHELPFILEvars}
echo '===============================================================================' >> ${tempENVHELPFILEvars}
echo >> ${tempENVHELPFILEvars}


echo '===============================================================================' > ${tempENVHELPFILEalias}
echo 'List Custom User alias commands set by alias_commands.add.all' >> ${tempENVHELPFILEalias}
echo '===============================================================================' >> ${tempENVHELPFILEalias}
echo >> ${tempENVHELPFILEalias}


# Single Line entries
#printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "x" ${x} >> ${tempENVHELPFILEvars}
#printf "${tCYAN}%-30s${tNORM} : %s\n" "x" 'x' >> ${tempENVHELPFILEalias}
# Two Line entries
#printf "${tCYAN}%s${tNORM}\n" "x" >> ${tempENVHELPFILEalias}
#printf "${tCYAN}%-30s${tNORM} :: %s\n" " " 'x' >> ${tempENVHELPFILEalias}


#========================================================================================
# 2020-11-18

if [ -z ${SCRIPTVERBOSE} ] ; then 
    export SCRIPTVERBOSE=false
fi
if [ -z ${NOWAIT} ] ; then 
    export NOWAIT=false
fi
if [ -z ${NOSTART} ] ; then 
    export NOSTART=false
fi

printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "SCRIPTVERBOSE" ${SCRIPTVERBOSE} >> ${tempENVHELPFILEvars}
printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "NOWAIT" ${NOWAIT} >> ${tempENVHELPFILEvars}
printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "NOSTART" ${NOSTART} >> ${tempENVHELPFILEvars}
echo >> ${tempENVHELPFILEvars}

#========================================================================================
# 2019-09-28, 2020-05-30, 2020-09-30, 2020-11-18

export MYWORKFOLDER=/home/__customer/

export MYWORKFOLDERSCRIPTS=${MYWORKFOLDER}/_scripts
export MYWORKFOLDERSCRIPTSB4L=${MYWORKFOLDER}/_scripts/bash_4_linux
export MYWORKFOLDERTOOLS=${MYWORKFOLDER}/_tools
export MYWORKFOLDERDOWNLOADS=${MYWORKFOLDER}/download
export MYWORKFOLDERGIT=${MYWORKFOLDER}/git
export MYWORKFOLDERLINUXDEV=${MYWORKFOLDER}/linux_devops
export MYWORKFOLDERDEVSCRIPTS=${MYWORKFOLDERLINUXDEV}/scripts
export MYWORKFOLDERCHANGE=${MYWORKFOLDERLINUXDEV}/Change_Log
export MYWORKFOLDERDUMP=${MYWORKFOLDERLINUXDEV}/dump
export MYWORKFOLDERREFERENCE=${MYWORKFOLDERLINUXDEV}/Reference

printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYWORKFOLDER" ${MYWORKFOLDER} >> ${tempENVHELPFILEvars}
printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYWORKFOLDERSCRIPTS" ${MYWORKFOLDERSCRIPTS} >> ${tempENVHELPFILEvars}
printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYWORKFOLDERSCRIPTSB4L" ${MYWORKFOLDERSCRIPTSB4L} >> ${tempENVHELPFILEvars}
printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYWORKFOLDERTOOLS" ${MYWORKFOLDERTOOLS} >> ${tempENVHELPFILEvars}
printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYWORKFOLDERDOWNLOADS" ${MYWORKFOLDERDOWNLOADS} >> ${tempENVHELPFILEvars}
printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYWORKFOLDERGIT" ${MYWORKFOLDERGIT} >> ${tempENVHELPFILEvars}
printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYWORKFOLDERLINUXDEV" ${MYWORKFOLDERLINUXDEV} >> ${tempENVHELPFILEvars}
printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYWORKFOLDERDEVSCRIPTS" ${MYWORKFOLDERDEVSCRIPTS} >> ${tempENVHELPFILEvars}
printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYWORKFOLDERCHANGE" ${MYWORKFOLDERCHANGE} >> ${tempENVHELPFILEvars}
printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYWORKFOLDERDUMP" ${MYWORKFOLDERDUMP} >> ${tempENVHELPFILEvars}
printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYWORKFOLDERREFERENCE" ${MYWORKFOLDERREFERENCE} >> ${tempENVHELPFILEvars}
echo >> ${tempENVHELPFILEvars}

#========================================================================================
# 2020-08-26

# points to where jq is installed
if [ -r /usr/bin/jq ] ; then
    export JQ=/usr/bin/jq
else
    export JQ=
fi

printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "JQ" ${JQ} >> ${tempENVHELPFILEvars}

# points to where jq 1.6 is installed, which is not generally part of Gaia, even R80.40EA (2020-01-20)
export JQ16PATH=${MYWORKFOLDER}/_tools/JQ
export JQ16FILE=jq-linux64
export JQ16FQFN=${JQ16PATH}/${JQ16FILE}
if [ -r ${JQ16FQFN} ] ; then
    # OK we have the easy-button alternative
    export JQ16=${JQ16FQFN}
    
    printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "JQ16PATH" ${JQ16PATH} >> ${tempENVHELPFILEvars}
    printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "JQ16FILE" ${JQ16FILE} >> ${tempENVHELPFILEvars}
    printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "JQ16FQFN" ${JQ16FQFN} >> ${tempENVHELPFILEvars}
    printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "JQ16" ${JQ16} >> ${tempENVHELPFILEvars}
    echo >> ${tempENVHELPFILEvars}
else
    export JQ16=
    export JQ16PATH=
    export JQ16FILE=
    export JQ16FQFN=
    echo >> ${tempENVHELPFILEvars}
fi



#========================================================================================
# Setup main environment help alias
#========================================================================================
# 2021-06-23


alias show_environment_help='echo;more ${ENVIRONMENTHELPFILE};echo'

printf "${tCYAN}%-30s${tNORM} : %s\n" "show_environment_help" 'Display help for user environment variables and alias values set' >> ${tempENVHELPFILEalias}

alias show_user_variables='echo;more ${ENVIRONMENTVARSFILE};echo'

printf "${tCYAN}%-30s${tNORM} : %s\n" "show_user_variables" 'Display help for user environment variables' >> ${tempENVHELPFILEalias}


#========================================================================================
# Setup Private Configuration Variables and operations
#========================================================================================


if [ -f .private_bash_config ] ; then
    . .private_bash_config "$@"
fi


#========================================================================================
# Setup alias and other complex operations
#========================================================================================


#========================================================================================
# Updated 2020-11-26
#alias list='ls -alh'
alias list='ls -alh --color=auto --group-directories-first'
printf "${tCYAN}%-30s${tNORM} : %s\n" "list" 'display folder content with -alh --color=auto --group-directories-first' >> ${tempENVHELPFILEalias}


#========================================================================================
# 2021-06-23

alias DAYDATE='date +%Y-%m-%d'
alias DTGDATE='date +%Y-%m-%d-%H%M%Z'
alias DTGSDATE='date +%Y-%m-%d-%H%M%S%Z'

alias DTGUTCDATE='date -u +%Y-%m-%d-%H%M%Z'
alias DTGUTCSDATE='date -u +%Y-%m-%d-%H%M%S%Z'

printf "${tCYAN}%-30s${tNORM} : %s\n" "DAYDATE" 'Generate Date Group with Year-Month-Day YYYY-mm-dd' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "DTGDATE" 'Generate Date Time Group with Year-Month-Day-Time-TimeZone YYYY-mm-dd-HHMMTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "DTGSDATE" 'Generate Date Time Group with Year-Month-Day-Time-TimeZone YYYY-mm-dd-HHMMSSTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "DTGUTCDATE" 'Generate UTC based Date Time Group with Year-Month-Day-Time-TimeZone YYYY-mm-dd-HHMMTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "DTGUTCSDATE" 'Generate UTC based Date Time Group with Year-Month-Day-Time-TimeZone YYYY-mm-dd-HHMMSSTZ3' >> ${tempENVHELPFILEalias}

alias timecheck='echo -e "Current Date-Time-Group : `DTGSDATE` \n"'

printf "${tCYAN}%-30s${tNORM} : %s\n" "timecheck" 'Show Current DTGS Date Time Group (YYYY-mm-dd-HHMMSSTZ3)' >> ${tempENVHELPFILEalias}


#========================================================================================
# 2021-06-23

alias DAYDATE='date +%Y-%m-%d'
alias DTGDATE='date +%Y-%m-%d-%H%M%Z'
alias DTGSDATE='date +%Y-%m-%d-%H%M%S%Z'

alias DTGUTCDATE='date -u +%Y-%m-%d-%H%M%Z'
alias DTGUTCSDATE='date -u +%Y-%m-%d-%H%M%S%Z'

printf "${tCYAN}%-30s${tNORM} : %s\n" "DAYDATE" 'Generate Date Group with Year-Month-Day YYYY-mm-dd' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "DTGDATE" 'Generate Date Time Group with Year-Month-Day-Time-TimeZone YYYY-mm-dd-HHMMTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "DTGSDATE" 'Generate Date Time Group with Year-Month-Day-Time-TimeZone YYYY-mm-dd-HHMMSSTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "DTGUTCDATE" 'Generate UTC based Date Time Group with Year-Month-Day-Time-TimeZone YYYY-mm-dd-HHMMTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "DTGUTCSDATE" 'Generate UTC based Date Time Group with Year-Month-Day-Time-TimeZone YYYY-mm-dd-HHMMSSTZ3' >> ${tempENVHELPFILEalias}

alias timecheck='echo -e "Current Date-Time-Group : `DTGSDATE` \n"'

printf "${tCYAN}%-30s${tNORM} : %s\n" "timecheck" 'Show Current DTGS Date Time Group (YYYY-mm-dd-HHMMSSTZ3)' >> ${tempENVHELPFILEalias}


#========================================================================================
# 2021-06-23

alias HOSTNAMEDTG='echo ${HOSTNAME}.`DTGDATE`'
alias HOSTNAMEDTGS='echo ${HOSTNAME}.`DTGSDATE`'
alias HOSTNAMENOW='echo ${HOSTNAME}.`DTGSDATE`'

printf "${tCYAN}%-30s${tNORM} : %s\n" "HOSTNAMEDTG" 'Generate hostname . (dot) Date Time Group :  ${HOSTNAME}.YYYY-mm-dd-HHMMTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "HOSTNAMEDTGS" 'Generate hostname . (dot) Date Time Group with Seconds :  ${HOSTNAME}.YYYY-mm-dd-HHMMSSTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "HOSTNAMENOW" 'Generate hostname . (dot) Date Time Group with Seconds :  ${HOSTNAME}.YYYY-mm-dd-HHMMSSTZ3' >> ${tempENVHELPFILEalias}


alias hostnow='echo ${HOSTNAME}.`DTGSDATE`'
alias hosttoday='echo ${HOSTNAME}.`DAYDATE`'

printf "${tCYAN}%-30s${tNORM} : %s\n" "hostnow" 'Name Now - Generate hostname . (dot) Date Time Group with Seconds :  ${HOSTNAME}.YYYY-mm-dd-HHMMSSTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "hosttoday" 'Name Today - Generate hostname . (dot) Date Group :  ${HOSTNAME}.YYYY-mm-dd' >> ${tempENVHELPFILEalias}


alias usernow='echo ${USER}.`DTGSDATE`'
alias usertoday='echo ${USER}.`DAYDATE`'

printf "${tCYAN}%-30s${tNORM} : %s\n" "usernow" 'Name Now - Generate username . (dot) Date Time Group with Seconds :  ${USER}YYYY-mm-dd-HHMMSSTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "usertoday" 'Name Today - Generate username . (dot) Date Group :  ${USER}.YYYY-mm-dd' >> ${tempENVHELPFILEalias}


alias hostusernow='echo ${HOSTNAME}.${USER}.`DTGSDATE`'
alias hostusertoday='echo ${HOSTNAME}.${USER}.`DAYDATE`'

printf "${tCYAN}%-30s${tNORM} : %s\n" "hostusernow" 'Name Now - Generate hostname . (dot) username . (dot) Date Time Group with Seconds :  ${HOSTNAME}.${USER}.YYYY-mm-dd-HHMMSSTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "hostusertoday" 'Name Today - Generate hostname . (dot) username . (dot) Date Group :  ${HOSTNAME}.${USER}.YYYY-mm-dd' >> ${tempENVHELPFILEalias}


alias userhostnow='echo ${USER}.${HOSTNAME}.`DTGSDATE`'
alias userhosttoday='echo ${USER}.${HOSTNAME}.`DAYDATE`'

printf "${tCYAN}%-30s${tNORM} : %s\n" "userhostnow" 'Name Now - Generate username . (dot) hostname . (dot) Date Time Group with Seconds :  ${USER}.${HOSTNAME}.YYYY-mm-dd-HHMMSSTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "userhosttoday" 'Name Today - Generate username . (dot) hostname . (dot) Date Group :  ${USER}.${HOSTNAME}.YYYY-mm-dd' >> ${tempENVHELPFILEalias}


#========================================================================================
# UPDATED 2021-06-23 -

#Generate testing folders
alias testingnow='testfolder="./__testing.${HOSTNAME}.${USER}.`DTGSDATE`" ; echo "Making test folder now:  ${testfolder}" ; echo ; mkdir ${testfolder} ; ls -alh --color=auto --group-directories-first ${testfolder} ; echo'
alias testingtoday='testfolder="./__testing.${HOSTNAME}.${USER}.`DAYDATE`" ; echo "Making test folder now:  ${testfolder}" ; echo ; mkdir ${testfolder} ; ls -alh --color=auto --group-directories-first ${testfolder} ; echo'

printf "${tCYAN}%-30s${tNORM} : %s\n" "testingnow" 'Generate Test Folder Now in this folder :  ${HOSTNAME}.${USER}.YYYY-mm-dd-HHMMSSTZ3' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "testingtoday" 'Generate Test Folder Today in this folder :  ${HOSTNAME}.${USER}.YYYY-mm-dd' >> ${tempENVHELPFILEalias}


#========================================================================================
# 2021-08-26

alias gocustomer='cd ${MYWORKFOLDER};echo Current path = `pwd`;echo'
alias goscripts='cd "${MYWORKFOLDERSCRIPTS}";echo Current path = `pwd`;echo'
alias gob4L='cd "${MYWORKFOLDERSCRIPTSB4L}";echo Current path = `pwd`;echo'
alias gob4l='gob4l'
alias gogit='cd ${MYWORKFOLDERGIT};echo Current path = `pwd`;echo'
alias godev='cd ${MYWORKFOLDERLINUXDEV};echo Current path = `pwd`;echo'
alias godevscripts='cd ${MYWORKFOLDERDEVSCRIPTS};echo Current path = `pwd`;echo'
alias gochangelog='cd "${MYWORKFOLDERCHANGE}";echo Current path = `pwd`;echo'
alias godump='cd "${MYWORKFOLDERDUMP}";echo Current path = `pwd`;echo'
alias godownload='cd "${MYWORKFOLDERDOWNLOADS}";echo Current path = `pwd`;echo'
alias goreference='cd "${MYWORKFOLDERREFERENCE}";echo Current path = `pwd`;echo'

printf "${tCYAN}%-30s${tNORM} : %s\n" "gocustomer" 'Go to customer work folder '${MYWORKFOLDER} >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "goscripts" 'Go to scripts folder '${MYWORKFOLDERSCRIPTS} >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "gob4l|gob4L" 'Go to bash 4 Linux folder '${MYWORKFOLDERSCRIPTSB4L} >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "gogit" 'Go to git folder '${MYWORKFOLDERLINUXDEV} >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "godev" 'Go to Linux development folder '${MYWORKFOLDERLINUXDEV} >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "godevscripts" 'Go to Linux development scripts folder '${MYWORKFOLDERDEVSCRIPTS} >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "gochangelog" 'Go to Change Log folder '${MYWORKFOLDERCHANGE} >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "godump" 'Go to dump folder '${MYWORKFOLDERDUMP} >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "godownload" 'Go to download folder '${MYWORKFOLDERDOWNLOADS} >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "goreference" 'Go to Reference folder '${MYWORKFOLDERDOWNLOADS} >> ${tempENVHELPFILEalias}
#printf "${tCYAN}%-30s${tNORM} : %s\n" "gob4CP" 'Go to bash 4 Check Point folder '${MYWORKFOLDERSCRIPTSB4CP} >> ${tempENVHELPFILEalias}


#========================================================================================
# 2020-09-17
if [ -r ${MYWORKFOLDER}/devops ] ; then
    alias godevops='cd ${MYWORKFOLDER}/devops;echo Current path = `pwd`;echo'
    alias godevopsexport='cd ${MYWORKFOLDER}/devops/export_import;echo Current path = `pwd`;echo'
    printf "${tCYAN}%-30s${tNORM} : %s\n" "godevops" 'Go to api devops folder '${MYWORKFOLDER}/devops >> ${tempENVHELPFILEalias}
    printf "${tCYAN}%-30s${tNORM} : %s\n" "godevopsexport" 'Go to api devops export folder '${MYWORKFOLDER}/devops/export_import >> ${tempENVHELPFILEalias}
fi
if [ -r ${MYWORKFOLDER}/devops.dev ] ; then
    alias godevopsdev='cd ${MYWORKFOLDER}/devops.dev;echo Current path = `pwd`;echo'
    alias godevopsdevexport='cd ${MYWORKFOLDER}/devops.dev/export_import.wip;echo Current path = `pwd`;echo'
    printf "${tCYAN}%-30s${tNORM} : %s\n" "godevopsdev" 'Go to api devops development folder '${MYWORKFOLDER}/devops.dev >> ${tempENVHELPFILEalias}
    printf "${tCYAN}%-30s${tNORM} : %s\n" "godevopsdevexport" 'Go to api devops development export folder '${MYWORKFOLDER}/devops.dev/export_import.wip >> ${tempENVHELPFILEalias}
fi

#========================================================================================
# 2020-09-17

alias makedumpnow='DTGSNOW=`DTGSDATE`;mkdir -pv "${MYWORKFOLDERDUMP}/${DTGSNOW}";list "${MYWORKFOLDERDUMP}/";echo;echo "New dump folder = ${MYWORKFOLDERDUMP}/${DTGSNOW}";echo Current path = `pwd`;echo'
alias godumpnow='DTGSNOW=`DTGSDATE`;mkdir -pv "${MYWORKFOLDERDUMP}/${DTGSNOW}";list "${MYWORKFOLDERDUMP}/";echo;cd "${MYWORKFOLDERDUMP}/${DTGSNOW}";echo;echo Current path = `pwd`;echo'
alias makedumpdtg='DTGNOW=`DTGDATE`;mkdir -pv "${MYWORKFOLDERDUMP}/${DTGNOW}";list "${MYWORKFOLDERDUMP}/";echo;echo "New dump folder = ${MYWORKFOLDERDUMP}/${DTGNOW}";echo Current path = `pwd`;echo'
alias godumpdtg='DTGNOW=`DTGDATE`;mkdir -pv "${MYWORKFOLDERDUMP}/${DTGNOW}";list "${MYWORKFOLDERDUMP}/";echo;cd "${MYWORKFOLDERDUMP}/${DTGNOW}";echo;echo Current path = `pwd`;echo'

printf "${tCYAN}%-30s${tNORM} : %s\n" "makedumpnow" 'Create a dump folder with current Date Time Group (DTGS) and show that folder' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "godumpnow" 'Create a dump folder with current Date Time Group (DTGS) and change to that folder' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "makedumpdtg" 'Create a dump folder with current Date Time Group (DTG) and show that folder' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "godumpdtg" 'Create a dump folder with current Date Time Group (DTG) and change to that folder' >> ${tempENVHELPFILEalias}

alias makechangelognow='DTGSNOW=`DTGSDATE`;mkdir -pv "${MYWORKFOLDERCHANGE}/${DTGSNOW}";list "${MYWORKFOLDERCHANGE}/";echo;echo Current path = `pwd`;echo'
alias gochangelognow='DTGSNOW=`DTGSDATE`;mkdir -pv "${MYWORKFOLDERCHANGE}/${DTGSNOW}";list "${MYWORKFOLDERCHANGE}/";echo;cd "${MYWORKFOLDERCHANGE}/${DTGSNOW}";echo;echo Current path = `pwd`;echo'
alias makechangelogdtg='DTGNOW=`DTGDATE`;mkdir -pv "${MYWORKFOLDERCHANGE}/${DTGNOW}";list "${MYWORKFOLDERCHANGE}/";echo;echo Current path = `pwd`;echo'
alias gochangelogdtg='DTGNOW=`DTGDATE`;mkdir -pv "${MYWORKFOLDERCHANGE}/${DTGNOW}";list "${MYWORKFOLDERCHANGE}/";echo;cd "${MYWORKFOLDERCHANGE}/${DTGNOW}";echo;echo Current path = `pwd`;echo'

printf "${tCYAN}%-30s${tNORM} : %s\n" "makechangelognow" 'Create a Change Log folder with current Date Time Group (DTGS) and show that folder' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "gochangelognow" 'Create a Change Log folder with current Date Time Group (DTGS) and change to that folder' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "makechangelogdtg" 'Create a Change Log folder with current Date Time Group (DTG) and show that folder' >> ${tempENVHELPFILEalias}
printf "${tCYAN}%-30s${tNORM} : %s\n" "gochangelogdtg" 'Create a Change Log folder with current Date Time Group (DTG) and change to that folder' >> ${tempENVHELPFILEalias}

#========================================================================================
#========================================================================================
# 2021-08-27 Updated

alias do_apt_update='echo; sudo apt update; echo; sudo apt upgrade; echo'
printf "${tCYAN}%-30s${tNORM} : %s\n" "do_apt_update" 'Execute sude apt update and apt upgrade' >> ${tempENVHELPFILEalias}

alias reowncustomer='echo; sudo chown -vhR root:adm /__customer; echo'
printf "${tCYAN}%-30s${tNORM} : %s\n" "reowncustomer" 'Fix user and group ownership of /__customer' >> ${tempENVHELPFILEalias}

alias refreshmybashaliases='echo; cp "/__customer/skel.files/.bash_aliases" "${HOME}/" ; cp "/__customer/skel.files/.private_bash_config" "${HOME}/" ; echo ; source ~/.bash_aliases; echo'
printf "${tCYAN}%-30s${tNORM} : %s\n" "refreshmybashaliases" 'Refresh my .bash_aliases files from /home/__customer/skel.files/ folder' >> ${tempENVHELPFILEalias}


#========================================================================================
#========================================================================================
# 2020-11-26 Updated

#
# This section expects definition of the following external variables.  These are usually part of the user profile setup in the ${HOME} folder
#  MYTFTPSERVER     default TFTP/FTP server to use for TFTP/FTP operations, usually set to one of the following
#  MYTFTPSERVER1    first TFTP/FTP server to use for TFTP/FTP operations
#  MYTFTPSERVER2    second TFTP/FTP server to use for TFTP/FTP operations
#  MYTFTPSERVER3    third TFTP/FTP server to use for TFTP/FTP operations
#
#  MYTFTPSERVER* values are assumed to be an IPv4 Address (0.0.0.0 to 255.255.255.255) that represents a valid TFTP/FTP target host.
#  Setting one of the MYTFTPSERVER* to blank ignores that host.  Future scripts may include checks to see if the host actually has a reachable TFTP/FTP server
#

# MYTFTPSERVERx and MYTFTPFOLDER values are now set in private_config.add.sh file
#

if [ -n ${MYTFTPSERVER} ] ; then
    # MYTFTPSERVERx values are set
    
    printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYTFTPSERVER1" ${MYTFTPSERVER1} >> ${tempENVHELPFILEvars}
    printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYTFTPSERVER2" ${MYTFTPSERVER2} >> ${tempENVHELPFILEvars}
    printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYTFTPSERVER3" ${MYTFTPSERVER3x} >> ${tempENVHELPFILEvars}
    printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYTFTPSERVER" ${MYTFTPSERVERx} >> ${tempENVHELPFILEvars}
    printf "variable :  ${tCYAN}%-25s${tNORM} = %s\n" "MYTFTPFOLDER" ${MYTFTPFOLDER} >> ${tempENVHELPFILEvars}
    echo >> ${tempENVHELPFILEvars}
    
    alias show_mytftpservers='echo -e "MYTFTPSERVERs: \n MYTFTPSERVER  = ${MYTFTPSERVER} \n MYTFTPSERVER1 = ${MYTFTPSERVER1} \n MYTFTPSERVER2 = ${MYTFTPSERVER2} \n MYTFTPSERVER3 = ${MYTFTPSERVER3}" ;echo'
    printf "${tCYAN}%-30s${tNORM} : %s\n" "show_mytftpservers" 'Show current settings for the TFTP servers defined by MYTFTPSERVERx ' >> ${tempENVHELPFILEalias}
    
    #alias getupdatescripts='gougex;pwd;tftp -v -m binary ${MYTFTPSERVER} -c get ${MYTFTPFOLDER}/updatelinuxscripts.sh;echo;chmod 775 updatelinuxscripts.sh;echo;ls -alh updatelinuxscripts.sh'
    #printf "${tCYAN}%-30s${tNORM} : %s\n" "getupdatescripts" 'Get the current update script from the primary TFTP server' >> ${tempENVHELPFILEalias}
    
    #alias updatelatestscripts='getupdatescripts ; . ./updatelinuxscripts.sh ; . ./alias_commands_update_all_users'
    #printf "${tCYAN}%-30s${tNORM} : %s\n" "updatelatestscripts" 'Update to the latest Linux scripts on the TFTP server' >> ${tempENVHELPFILEalias}
    
    #alias getsetuphostscript='cd /var/log;pwd;tftp -v -m binary ${MYTFTPSERVER} -c get ${MYTFTPFOLDER}/setuplinuxhost.sh;echo;chmod 775 setuplinuxhost.sh;echo;ls -alh setuplinuxhost.sh'
    #printf "${tCYAN}%-30s${tNORM} : %s\n" "getsetuphostscript" 'Get the current Linux host setup script from the primary TFTP server' >> ${tempENVHELPFILEalias}
    
    #alias gettoolsupdatescript='gougex;pwd;tftp -v -m binary ${MYTFTPSERVER} -c get ${MYTFTPFOLDER}/update_linux_tools.sh;echo;chmod 775 update_linux_tools.sh;echo;ls -alh update_linux_tools.sh'
    #printf "${tCYAN}%-30s${tNORM} : %s\n" "gettoolsupdatescript" 'Get the current Linux tools setup script from the primary TFTP server' >> ${tempENVHELPFILEalias}
    
else
    # MYTFTPSERVERx values are not set
    
    echo
    echo 'Values for MYTFTPSERVERx not set, so not establishing the configuration and alias'
    echo
    
fi


#alias alias_commands_add_user='cd ${MYWORKFOLDERLINUXDEV};${MYWORKFOLDERSCRIPTS}/UserConfig/alias_commands_add_user.v00.01.00.sh'
#alias alias_commands_add_all_users='cd ${MYWORKFOLDERLINUXDEV};${MYWORKFOLDERSCRIPTS}/UserConfig/alias_commands_add_all_users.v00.01.00.sh'
#alias alias_commands_update_user='cd ${MYWORKFOLDERLINUXDEV};${MYWORKFOLDERSCRIPTS}/UserConfig/alias_commands_update_user.v00.01.00.sh'
#alias alias_commands_update_all_users='cd ${MYWORKFOLDERLINUXDEV};${MYWORKFOLDERSCRIPTS}/UserConfig/alias_commands_update_all_users.v00.01.00.sh'
#printf "${tCYAN}%-30s${tNORM} : %s\n" "alias_commands_add_user" 'Add alias commands to current user' >> ${tempENVHELPFILEalias}
#printf "${tCYAN}%-30s${tNORM} : %s\n" "alias_commands_add_all_users" 'Add alias commands to all user' >> ${tempENVHELPFILEalias}
#printf "${tCYAN}%-30s${tNORM} : %s\n" "alias_commands_update_user" 'Update alias commands to current user' >> ${tempENVHELPFILEalias}
#printf "${tCYAN}%-30s${tNORM} : %s\n" "alias_commands_update_all_users" 'Update alias commands to all users' >> ${tempENVHELPFILEalias}


#========================================================================================
#========================================================================================
# 2020-09-30, 2020-11-11
#

# Add function to save the help output from a command to a file in the Upgrade Export Reference Folder
#

printf "${tCYAN}%-30s${tNORM} : %s\n" 'help2reference <command>' 'Document help for <command> to Reference folder' >> ${tempENVHELPFILEalias}

help2reference () 
{ 
    referencefile="${MYWORKFOLDERREFERENCE}/help.$1.`hostusernow`.txt"
    echo > ${referencefile}
    echo 'referencefile = '${referencefile} | tee -a -i ${referencefile}
    echo 'Command = '"$@" --help | tee -a -i ${referencefile}
    echo | tee -a -i ${referencefile}
    "$@" --help >> ${referencefile} 2>> ${referencefile}
    echo | tee -a -i ${referencefile}
    list ${referencefile}
    echo
    echo 'Reference help file FQPN:'
    echo ${referencefile}
    echo
}


#========================================================================================
#========================================================================================
# 2020-09-30, 2020-11-11, 2020-11-18
#

# Add function to save the help output from a command to a file in the Upgrade Export Reference Folder
#

printf "${tCYAN}%-30s${tNORM} : %s\n" "docset2reference" 'Document set output to Reference folder' >> ${tempENVHELPFILEalias}

docset2reference () 
{ 
    referencefile="${MYWORKFOLDERREFERENCE}/help.set.`hostusernow`.txt"
    echo 'Document set output to Reference folder file:  '${referencefile}
    echo
    set > ${referencefile}
    echo
    list ${referencefile}
    echo
    echo 'Reference set dump file FQPN:'
    echo ${referencefile}
    echo
}


# 2020-11-18
# Add function to save the help output from a command to a file in a NOW Upgrade Export dump Folder
#

printf "${tCYAN}%-30s${tNORM} : %s\n" "docset2dumpnow" 'Document set output to dump folder with DTG NOW' >> ${tempENVHELPFILEalias}

docset2dumpnow () 
{ 
    DTGSNOW=`DTGSDATE`
    dumpnowfolder=${MYWORKFOLDERDUMP}/${DTGSNOW}
    mkdir -pv "${dumpnowfolder}"
    referencefile="${dumpnowfolder}/current.set.`hostusernow`.txt"
    echo 'Document set output to dump folder with DTG NOW :  '${referencefile}
    echo
    set > ${referencefile}
    echo
    list "${dumpnowfolder}/"
    echo
    echo 'Reference set dump file FQPN:'
    echo ${referencefile}
    echo
}


#========================================================================================
# 2021-08-26
# Add functions to save the  output from history to a file in a NOW linux dev dump Folder
#

printf "${tCYAN}%-30s${tNORM} : %s\n" "historydumpnow" 'Document current history output to dump folder for today with DTG NOW' >> ${tempENVHELPFILEalias}

historydumpnow () 
{ 
    DTGSNOW=`DTGSDATE`
    DTGDAY=`DAYDATE`
    dumpnowfolder=${MYWORKFOLDERDUMP}/${DTGDAY}
    mkdir -pv "${dumpnowfolder}"
    historyfile="${dumpnowfolder}/current.history.`userhostnow`.txt"
    echo 'Document current history output to dump folder for today with DTG NOW :  '${referencefile}
    echo
    history > ${historyfile}
    echo
    list "${dumpnowfolder}/"
    echo
    echo 'History dump file FQPN:'
    echo ${historyfile}
    echo
}


# Add functions to save the  output from history to a file in a NOW linux dev dump Folder and clear history
#

printf "${tCYAN}%-30s${tNORM} : %s\n" "historyclearnow" 'Document current history output to dump folder for today with DTG NOW and clear history' >> ${tempENVHELPFILEalias}

historyclearnow () 
{ 
    DTGSNOW=`DTGSDATE`
    DTGDAY=`DAYDATE`
    dumpnowfolder=${MYWORKFOLDERDUMP}/${DTGDAY}
    mkdir -pv "${dumpnowfolder}"
    historyfile="${dumpnowfolder}/current.history.`userhostnow`.txt"
    echo 'Document current history output to dump folder for today with DTG NOW and clear history :  '${referencefile}
    echo
    history > ${historyfile}
    echo
    list "${dumpnowfolder}/"
    echo
    history -c
    echo
    echo 'History dump file FQPN:'
    echo ${historyfile}
    echo
}


#========================================================================================
#========================================================================================
# Build environment help file
#========================================================================================

cat ${tempENVHELPFILEvars} >> ${ENVIRONMENTHELPFILE}
cat ${tempENVHELPFILEvars} >> ${ENVIRONMENTVARSFILE}
rm -f ${tempENVHELPFILEvars}
tempENVHELPFILEvars=

cat ${tempENVHELPFILEalias} >> ${ENVIRONMENTHELPFILE}
rm -f ${tempENVHELPFILEalias}
tempENVHELPFILEalias=

echo >> ${ENVIRONMENTHELPFILE}
echo '===============================================================================' >> ${ENVIRONMENTHELPFILE}
echo 'MyBasementCloud bash 4 Linux RHEL Environment' >> ${ENVIRONMENTHELPFILE}
echo 'Scripts :  Version '${ScriptVersion}', Revision '${ScriptRevision}', Level '${AliasCommandsLevel}' from Date '${ScriptDate} >> ${ENVIRONMENTHELPFILE}
echo '===============================================================================' >> ${ENVIRONMENTHELPFILE}
echo '===============================================================================' >> ${ENVIRONMENTHELPFILE}
echo >> ${ENVIRONMENTHELPFILE}

echo >> ${ENVIRONMENTVARSFILE}
echo '===============================================================================' >> ${ENVIRONMENTVARSFILE}
echo 'MyBasementCloud bash 4 Linux RHEL Environment' >> ${ENVIRONMENTVARSFILE}
echo 'Scripts :  Version '${ScriptVersion}', Revision '${ScriptRevision}', Level '${AliasCommandsLevel}' from Date '${ScriptDate} >> ${ENVIRONMENTVARSFILE}
echo '===============================================================================' >> ${ENVIRONMENTVARSFILE}
echo '===============================================================================' >> ${ENVIRONMENTVARSFILE}
echo >> ${ENVIRONMENTVARSFILE}

list ${ENVIRONMENTHELPFILE}
list ${ENVIRONMENTVARSFILE}

echo
echo 'Configuration of User Environment completed!'
echo 'Display help regarding configured variables and aliases with command :  show_environment_help'
echo

timecheck
godev

#========================================================================================
#========================================================================================
# End of alias.commands.<action>.<scope>.sh
#========================================================================================
#========================================================================================


