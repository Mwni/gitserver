rm /run/fcgiwrap/socket;
/bin/su www -c "/usr/bin/fcgiwrap -s unix:/run/fcgiwrap/socket" & 
/usr/sbin/nginx &
wait
