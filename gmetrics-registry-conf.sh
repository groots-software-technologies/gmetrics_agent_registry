#!/bin/bash
#######################################################
# Program: Gmetrics registry to verify runnning agent plugins
# under gmetrics-agent service.
#
# Purpose:
#  This script verifying all gmetrics plugins running under gmetrics core.
#
# License:
#  This program is distributed in the hope that it will be useful,
#  but under groots software technologies @rights.
#
# Author: Groots DevOps Team
# Email : support@groots.in
# NOTE  : Do not edit or remove this file content, other wise gmetrics will not work.
#######################################################

# Check for people who need help - aren't we all nice ;-)
#######################################################

# Set script name
#######################################################
SCRIPTNAME=$(basename $0)

# Import Hostname
#######################################################
HOSTNAME=$(hostname)

# Main Logic.
#######################################################
GMCOREPATH="/groots/metrics/config/libexec/"
GMAGENTPATH="/groots/metrics/libexec/"
REGISTRY="gmetrics-bin"
if [ -f "$GMCOREPATH$REGISTRY" ]
then
        $GMCOREPATH$REGISTRY $SCRIPTNAME $(dirname `which $0`)
        if [ "$?" != "0" ]
        then
                exit 3;
        fi
elif [ -f "$GMAGENTPATH$REGISTRY" ]
then
        $GMAGENTPATH$REGISTRY $SCRIPTNAME $(dirname `which $0`)
        if [ "$?" != "0" ]
        then
                exit 3;
        fi
else
        echo "$REGISTRY file not found."
        exit 3;
fi
# End Main Logic.
#######################################################
