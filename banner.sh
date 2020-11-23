#!/data/data/com.termux/files/usr/bin/bash
#pkg requirment
apt-get update
apt-get upgrade
pkg install pv
pkg install neofetch
apt-get install cowsay | pv
apt-get install figlet | pv
apt-get install ruby | pv
pkg install ruby | pv
apt-get install curl | pv 
gem install lolcat | pv
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
echo -e "\e[33m enter your name : "
    read name                                                  
      
clear
echo -e "\e[37m Press any key to continue.."
clear
echo -e "\e[36m choose a custum prompt: "
echo -e "\e[95m[\e[0m1\e[95m] \e[32m Myname"
echo -e "\e[95m[\e[0m2\e[95m] \e[32m 🐭 : "
echo -e "\e[95m[\e[0m3\e[95m] \e[32m 🐇 : "
echo -e "\e[95m[\e[0m4\e[95m] \e[32m 🐤 : "
echo -e "\e[95m[\e[0m5\e[95m] \e[32m 🐁 : "
echo -e "\e[95m[\e[0m6\e[95m] \e[32m 🦄 : "
echo -e "\e[95m[\e[0m7\e[95m] \e[32m 🐲 : "
read my_prompt
case $my_prompt in 
    1 )
        my_prompt=$name;;
    2 )
        my_prompt=🐭 ;;
    3 )
        my_prompt=🐇 ;;
    4 )
        my_prompt=🐤 ;;
    5 )
        my_prompt=🐁 ;;
    6 )
        my_prompt=🦄 ;;
    7 )
        my_prompt=🐲 ;;
    * )
        echo -e "\e[37m invalid option"
        my_prompt=$name ;;
esac
echo -e "\e[95m prompt setting.."
clear
echo -e "\e[31m Choose a banner option. "
echo -e "\e[0m[\e[36m1\e[0m] \e[95m eye banner (Old)"
echo -e "\e[0m[\e[36m2\e[0m] \e[95m Os banner (New)" 
read b_optn #reading for banner options
                     
cd ~ 
cd ..
cd usr/etc
banner_old(){
    
    echo -e "\e[34m enter your tagline : "
    read tagline
    echo -e "\e[33m enter your name : "
    read name    

                                                         
    echo "cowsay -f eyes $tagline | lolcat " >> bash.bashrc
    echo "figlet $name | lolcat " >> bash.bashrc
    echo "date | lolcat" >> bash.bashrc
    echo "PS1='\e[33m$my_prompt\e[32m: '" >> bash.bashrc 
    echo "#alias setup" >> bash.bashrc
    echo 'alias c="clear"' >> bash.bashrc
    echo 'alias up="apt-get update"' >> bash.bashrc
    echo 'alias q="exit"' >> bash.bashrc
    echo 'alias wether="curl wttr.in"' >> bash.bashrc
    cowsay banner installed | lolcat
    }
Os_banner(){
    echo "neofetch"  >> bash.bashrc
    echo "date | lolcat" >> bash.bashrc
    echo "PS1='\e[33m$my_prompt\e[32m: '" >> bash.bashrc
    echo "#alias setup" >> bash.bashrc
    echo 'alias c="clear"' >> bash.bashrc
    echo 'alias up="apt-get update"' >> bash.bashrc
    echo 'alias q="exit"' >> bash.bashrc
    echo 'alias wether="curl wttr.in"' >> bash.bashrc
    cowsay banner installed | lolcat
}
if [[ $b_optn -eq 1 ]];then
    banner_old
elif [[ $b_optn -eq 2 ]];then
    Os_banner           
else
    echo "Invalid option"
fi
        
                           
