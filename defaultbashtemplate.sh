#!/bin/bash
################################################################################
#                              scriptTemplate                                  #
#                                                                              #
# Use this template as the beginning of a new program. Place a short           #
# description of the script here.                                              #
#                                                                              #
# Change History                                                               #
# 04/18/2020  David Weaver  Original code. This is a template for creating     #
#                           new Bash shell scripts.                            #
#                           Add new history entries as needed.                 #
#                                                                              #
#                                                                              #
################################################################################
################################################################################
################################################################################
GPL()
{
  # display GPL
   echo 'Copyright (C) 2021, David Weaver'
   echo 'email@email.org'
   echo ''
   echo 'This program is free software; you can redistribute it and/or modify'
   echo 'it under the terms of the GNU General Public License as published by'
   echo 'the Free Software Foundation; either version 2 of the License, or'
   echo '(at your option) any later version.'
   echo ''
   echo 'This program is distributed in the hope that it will be useful, but WITHOUT'
   echo 'ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or'
   echo 'FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License'
   echo 'for more details.'
   echo ''
   echo 'You should have received a copy of the GNU General Public License along'
   echo 'with this program; if not, write to the Free Software Foundation, Inc.,'
   echo '59 Temple Place, Suite 330, Boston, MA  02111-1307  USA'
   echo
}
################################################################################
################################################################################
softwareinfo()
{
  #display software version
  echo 'Version 1.0'
}
################################################################################
################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo "Add description of the script functions here."
   echo
   echo "Syntax: scriptTemplate [-g|h|v|V]"
   echo "options:"
   echo "g     Print the GPL license notification."
   echo "h     Print this Help."
   echo "v     Verbose mode."
   echo "V     Print software version and exit."
   echo
}

################################################################################
################################################################################
# Check for root.                                                              #
################################################################################
CheckRoot()
{
   if [ `id -u` != 0 ]
   then
      echo "ERROR: You must be root user to run this program"
      exit
   fi
}
################################################################################
# Main program                                                                 #
################################################################################
################################################################################
# Checks and Balances
# Are we running as root?
#CheckRoot

# Initialize variables
option=""
Msg="Hello World!"
################################################################################
# Process the input options. Add options as needed.                            #
################################################################################
################################################################################
# Get the options
while getopts ":hgvV" option; do
   case $option in
      h) # display Help
         Help
         exit;;
      g) # display gpl license info
	 GPL
	 exit;;
      v) # verbose
         verbose
         exit;;
      V) #print software version and exit
        softwareinfo
        exit;;
      \?) # incorrect option needs to be last
         echo "Error: Invalid option, use -h for help"
         exit;;

   esac
done

echo "$Msg"
