#$/bin/bash

echo "Starting certbot `date`"
while : 
do 
   echo "Sleeping for 12  hours"
   sleep 12h 
   echo "Renewing certbot"
   certbot renew
   echo "Renewed"
done 
