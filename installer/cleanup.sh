echo "DANGER!  This will delete your WebGUI site and all of its data."
echo "It's used for testing the installer.  Hit control-C now if you don't want to delete your database!"
echo "Hit enter to nuke everything."

read line

rm -rf /data
rm -f /etc/nginx/conf.d/webgui8.conf
rm -f /etc/rc.d/*/*webgui8
rm -rf /tmp/WebGUICache
killall starman
mysql --user=root --password=Nyklm6 -e 'drop database www_example_com;'
apt-get remove akonadi-backend-mysql  libdbd-mysql-perl libmysqlclient18:amd64 mysql-client-5.5 mysql-common mysql-server-core-5.5

