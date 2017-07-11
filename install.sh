#!/bin/bash
#initial system update
echo "Start" > $HOME/customscript.log
id -a >> $HOME/customscript.log
echo $0 >> $HOME/customscript.log
echo "update" >> $HOME/customscript.log
sudo apt-get update

echo "installation" >> $HOME/customscript.log
sudo apt-get install tree
sudo apt-get install apache2 -y
sudo apt-get install php5 -y
sudo apt-get install libapache2-mod-php5 -y
sudo apt-get install php5-mcrypt -y
sudo apt-get install wget -y



echo "upgrade" >> $HOME/customscript.log
# issue with custom script or waagent do not upgarde
# sudo apt-get -y upgrade
echo "Finish" >> $HOME/customscript.log
