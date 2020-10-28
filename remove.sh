#!/data/data/com.termux/files/usr/bin/bash
cd ~
cd ..
cd usr/etc/
rm -rf bash.bashrc
cd banner
mv bash.bashrc ..
pkg upgrade 
echo "banner removed..."
                  
