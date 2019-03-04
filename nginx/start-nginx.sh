#$/bin/bash

echo "Starting nginx `date`"
while : 
do 
   echo "Sleeping for 6 hours"
   sleep 6h 
   echo "Reloading nginx"
   nginx -s reload
done && /usr/sbin/nginx -g "daemon off;"
