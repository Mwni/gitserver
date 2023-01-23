rm /run/fcgiwrap/socket;
/usr/bin/fcgiwrap -s unix:/run/fcgiwrap/socket & 
/usr/sbin/nginx &
wait