apt-get -y remove --purge xserver-common
apt-get -y remove --purge x11-common
apt-get -y remove --purge gnome-icon-theme
apt-get -y remove --purge gnome-themes-standard
apt-get -y remove --purge penguinspuzzle
apt-get -y remove --purge desktop-base
apt-get -y remove --purge desktop-file-utils
apt-get -y remove --purge hicolor-icon-theme
apt-get -y remove --purge raspberrypi-artwork
apt-get -y remove --purge omxplayer
apt-get -y autoremove
apt-get -y update
apt-get -y upgrade
apt-get -y install ruby
apt-get -y install git
apt-get -y install libnss-mdns
apt-get -y install vim
apt-get -y install tmux
apt-get -y install htop
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
dpkg -i node_latest_armhf.deb
rm -rf /home/pi/python_games
rpi-update
echo "$(tput setaf 2)
 ________________  ____________________________ _______________.___. __________.___ 
\_   _____/  _  \ \_   ___ \__    ___/\_____  \\______   \__  |   | \______   \   |
 |    __)/  /_\  \/    \  \/ |    |    /   |   \|       _//   |   |  |     ___/   |
 |     \/    |    \     \____|    |   /    |    \    |   \\____   |  |    |   |   |
 \___  /\____|__  /\______  /|____|   \_______  /____|_  // ______|  |____|   |___|
     \/         \/        \/                  \/       \/ \/                       
$(tput sgr0)" > /etc/motd
echo "syntax enable 
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab" > /home/pi/.vimrc
cp /etc/skel/.bashrc /home/pi/.bashrc
echo "export EDITOR=vim" >> /home/pi/.bashrc