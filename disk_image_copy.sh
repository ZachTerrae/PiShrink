sudo umount /dev/sdb
sudo umount /dev/sdb1
sudo umount /dev/sdb2
sudo dd if=/dev/sdb of=ct-client.img
sudo pishrink.sh -d ct-client.img ct-client-shrunk.img
#sudo kill -USR1 $(pgrep ^dd) #check on dd command progress

#copy the shrunk image to a new sd card
#dd if=ct-client-shrunk.img of=/dev/sdb