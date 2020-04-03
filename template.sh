#!/bin/bash
###############################################################
# scriptTemplate #
# #
# Use this template as the beginning of a new program. Place #
# a short description of the script here. #
# #
# Change History #
# 04/01/2020 Adi Cohen Original code. This is a template #
# for creating new Bash shell #
# scripts. #
# Add new history entries as needed.#
# #
# #
###############################################################
###############################################################
###############################################################
# #
# Copyright (C) 2007, 2020 Adi Cohen #
# adico1@gmail.com #
# #
# This program is free software; you can redistribute it #
# and/or modify it under the terms of the GNU General Public #
# License as published by the Free Software Foundation; #
# either version 2 of the License, or (at your option) any #
# later version. #
# #
# This program is distributed in the hope that it will be #
# useful, but WITHOUT ANY WARRANTY; without even the implied #
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR #
# PURPOSE. See the GNU General Public License for more #
# details. #
# #
# You should have received a copy of the GNU General Public #
# License along with this program; if not, write to the Free #
# Software Foundation, Inc., 59 Temple Place, Suite 330, #
# Boston, MA 02111-1307 USA #
# #
###############################################################
###############################################################
###############################################################

###############################################################
# Help #
###############################################################
Help()
{
 # Display Help
 echo "Add description of the script functions here."
 echo
 echo "Syntax: scriptTemplate [-g|h|v|V]"
 echo "options:"
 echo "g Print the GPL license notification."
 echo "h Print this Help."
 echo "v Verbose mode."
 echo "V Print software version and exit."
 echo
}

###############################################################
# Version #
###############################################################
Version() {
  # Display version
  echo "Version: 0.0.1"
}

###############################################################
# License #
###############################################################
License() {
  # Display license
  echo ""
}

verbose=0
###############################################################
# Verbose #
###############################################################
ToggleVerbose() {
  # Display verbose
  return 1
}

###############################################################
# Check for root. #
###############################################################
CheckRoot()
{
 if [ `id -u` != 0 ]
 then
 echo "ERROR: You must be root user to run this program"
 exit
 fi
}

VEcho() {
  if [ $1 != 0 ]
  then
    echo $2
  fi
}
###############################################################
###############################################################
# Main program #
###############################################################
###############################################################


###############################################################
# Sanity checks #
###############################################################
# Are we rnning as root?
# CheckRoot

###############################################################
# Process the input options. Add options as needed. #
###############################################################
# Get the options
while getopts ":hVgv" option; do
  case $option in
    h) # display Help
      Help
      exit;;
    V) # print version
      Version
      exit;;
    g) # print version
      License
      exit;;
    v) # print version
      ToggleVerbose
      verbose=$?
      ;;
    \?) # incorrect option
      echo "Error: Invalid option"
      exit;;
  esac
done

Msg="Hello world!"
VerboseMode="Warning: Running in Verbose Mode"
VEcho $verbose "$VerboseMode"
echo "$Msg"
