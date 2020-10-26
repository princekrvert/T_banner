#!/data/data/com.termux/files/usr/bin/bash
#pkg requirment
apt-get update
apt-get upgrade
apt-get install cowsay
apt-get install figlet
apt-get install ruby
pkg install ruby
apt-get install curl
gem install lolcat
figlet installing | lolcat
figlet termux | lolcat
figlet banner | lolcat
cd ~          
cd ..
cd usr/etc
rm -rf motd
touch motd
mkdir banner
mv bash.bashrc banner
           
echo -e "\e[34m enter your tagline : "
read tagline
echo -e "\e[33m enter your name : "
read name
cd ~ 
cd ..
cd usr/etc
echo "cowsay -f eyes $tagline | lolcat " >> bash.bashrc
echo "figlet $name | lolcat " >> bash.bashrc
echo "date | lolcat" >> bash.bashrc
echo "#alias setup" >> bash.bashrc
echo 'alias c="clear"' >> bash.bashrc
echo 'alias up="apt-get update"' >> bash.bashrc
echo 'alias q="exit"' >> bash.bashrc
echo 'alias wether="curl wttr.in"' >> bash.bashrc
cowsay banner installed | lolcat
