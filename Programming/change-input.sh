#!/bin/bash
VALUE=`grep namafile config/config.cfg | cut -d '=' -f 2`
namaexec=`echo "$VALUE" | cut -f 1 -d '.'`
file="/home/ccxex29/Programming/C/auto-input/'$namaexec'_input"

# INITIALIZE FILE INPUT IF IT'S MISSING
if [ ! -e "${file}" ] ; then
    # Set default variable value
    touch $file
fi

nano $file