#!/bin/bash
################################################################################
#                              scriptTemplate                                  
#                                                                              
# Use this template as the beginning of a new program. Place a short           
# description of the script here.                                              
#                                                                              
# Change History                                                               
# 03/22/2021  David Weaver  Original code. This is a template for creating     
#                           new Bash shell scripts.                            
#                           Add new history entries as needed.                 
#                                                                              
#                                                                              
################################################################################
################################################################################
################################################################################
MIT()
{
  # display MIT License
   echo 'Copyright (C) 2021, David Weaver'
   echo 'email@email.org'
   echo ''
   echo 'Permission is hereby granted, free of charge, to any person obtaining a'
   echo 'copy of this software and associated documentation files (the "Software"), '
   echo 'to deal in the Software without restriction, including without'
   echo 'limitation the rights to use, copy, modify, merge, publish, distribute,'
   echo 'sublicense, and/or sell copies of the Software, and to permit persons to'
   echo 'whom echo the Software is furnished to do so, subject to the following'
   echo 'conditions:'

   echo 'The above copyright notice and this permission notice shall be'
   echo 'included in all copies or substantial portions of the Software.'

   echo 'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS'
   echo 'OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF'
   echo 'MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.'
   echo 'IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY'
   echo 'CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, '
   echo 'TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE'
   echo 'SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.'
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
   echo "L     Print the MIT license notification."
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
      L) # display MIT license info
	 MIT
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
