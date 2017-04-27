#!/bin/bash
###################################################
#
# First time setup for a fresh Ubuntu installation
#
###################################################



# add repos
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
sudo add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo add-apt-repository -y "deb http://dl.google.com/linux/talkplugin/deb/ stable main"
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository -y ppa:tuxpoldo/btsync
sudo add-apt-repository -y ppa:freyja-dev/unity-tweak-tool-daily
sudo add-apt-repository -y ppa:stefansundin/truecrypt
sudo add-apt-repository -y ppa:nixnote/nixnote2-daily
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

# basic update
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade


#----------------------------------------------------------------------------
# install apps
sudo apt-get -y install \
    libxss1 spotify-client sublime-text-installer git gitk gitg \
    virtualbox virtualbox-guest-additions-iso filezilla dropbox \
    skype btsync-user gimp p7zip p7zip-full p7zip-rar unity-tweak-tool \
    indicator-multiload curl gparted dkms google-chrome-stable \
    ubuntu-wallpapers* php5-cli php5-common php5-mcrypt php5-sqlite \
    php5-curl php5-json phpunit mcrypt ssmtp mailutils mpack truecrypt\
    nautilus-open-terminal google-talkplugin linux-headers-generic \
    build-essential tp-smapi-dkms thinkfan moc libglib2.0-bin nautilus-dropbox \
    dconf-cli python3 python3-pip nixnote2 devilspie2 lua5.2

#----------------------------------------------------------------------------
# pip3 updates
sudo pip3 install libpython3-dev
sudo pip3 install numpy
sudo pip3 install pandas
sudo pip3 install jupyter


#----------------------------------------------------------------------------
# Terminal
cp -a ./data/gconf/%gconf.xml ~/.gconf/apps/gnome-terminal/profiles/Default/


#----------------------------------------------------------------------------
# Create directories
mkdir ~/projects/


#Install dependencies
#echo "Installing dependencies"
#apt install git
#apt install libglib2.0-bin
#apt install dconf-cli
#apt-get install nautilus-dropbox

#echo "Installing python"


#----------------------------------------------------------------------------
# Manuall Software
echo "Setting up software"

# Pycharm
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu yakkety-getdeb apps" >> /etc/apt/sources.list.d/etdeb.list'
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add 
sudo apt update
sudo apt install pycharm




#----------------------------------------------------------------------------
# Git repositories
git "ssh_address" ~/projects/



#----------------------------------------------------------------------------
# profiles 

sudo cp ./config/.profile ~/.profile 
sudo cp ./config/.gitconfig ~/.gitconfig
sudo cp ./config/ssh/config ~/.ssh/config


#----------------------------------------------------------------------------
#add a function file
#just insert ./etc/functions at the being of the file
sudo cp functions /etc/functions


#----------------------------------------------------------------------------
# update system settings
echo "Seting up system settings"
dconf load / < old-gsettings-data.txt
gsettings set com.canonical.indicator.power show-percentage true
gsettings set com.canonical.indicator.sound interested-media-players "['spotify.desktop']"
gsettings set com.canonical.indicator.sound preferred-media-players "['spotify.desktop']"
gsettings set com.canonical.Unity form-factor 'Netbook'
gsettings set com.canonical.Unity.Launcher favorites "['application://google-chrome.desktop', 'application://sublime-text.desktop', 'application://spotify.desktop', 'application://nautilus.desktop', 'application://gnome-control-center.desktop', 'application://gitg.desktop', 'application://gnome-terminal.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']"
gsettings set com.canonical.Unity.Lenses remote-content-search 'none'
gsettings set com.canonical.Unity.Runner history "['/home/x/.scripts/screen_colour_correction.sh']"
gsettings set com.ubuntu.update-notifier regular-auto-launch-interval 0
gsettings set de.mh21.indicator.multiload.general autostart true
gsettings set de.mh21.indicator.multiload.general speed 500
gsettings set de.mh21.indicator.multiload.general width 75
gsettings set de.mh21.indicator.multiload.graphs.cpu enabled true
gsettings set de.mh21.indicator.multiload.graphs.disk enabled true
gsettings set de.mh21.indicator.multiload.graphs.load enabled true
gsettings set de.mh21.indicator.multiload.graphs.mem enabled true
gsettings set de.mh21.indicator.multiload.graphs.net enabled true
gsettings set de.mh21.indicator.multiload.graphs.swap enabled false
gsettings set org.freedesktop.ibus.general engines-order "['xkb:us::eng']"
gsettings set org.freedesktop.ibus.general preload-engines "['xkb:us::eng']"
gsettings set org.gnome.DejaDup backend 'file'
gsettings set org.gnome.DejaDup delete-after 365
gsettings set org.gnome.DejaDup include-list "['/home/x/Development', '/home/x/Pictures']"
gsettings set org.gnome.DejaDup periodic-period 1
gsettings set org.gnome.DejaDup welcomed true
gsettings set org.gnome.desktop.a11y.magnifier mag-factor 13.0
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/163_by_e4v.jpg'
gsettings set org.gnome.desktop.default-applications.terminal exec 'gnome-terminal'
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us')]"
gsettings set org.gnome.desktop.input-sources xkb-options "['lv3:ralt_switch', 'compose:rctrl']"
gsettings set org.gnome.desktop.media-handling autorun-never true
gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
gsettings set org.gnome.gitg.preferences.commit.message right-margin-at 72
gsettings set org.gnome.gitg.preferences.commit.message show-right-margin true
gsettings set org.gnome.gitg.preferences.diff external false
gsettings set org.gnome.gitg.preferences.hidden sign-tag true
gsettings set org.gnome.gitg.preferences.view.files blame-mode true
gsettings set org.gnome.gitg.preferences.view.history collapse-inactive-lanes 2
gsettings set org.gnome.gitg.preferences.view.history collapse-inactive-lanes-active true
gsettings set org.gnome.gitg.preferences.view.history search-filter false
gsettings set org.gnome.gitg.preferences.view.history show-virtual-staged true
gsettings set org.gnome.gitg.preferences.view.history show-virtual-stash true
gsettings set org.gnome.gitg.preferences.view.history show-virtual-unstaged true
gsettings set org.gnome.gitg.preferences.view.history topo-order false
gsettings set org.gnome.gitg.preferences.view.main layout-vertical 'vertical'
gsettings set org.gnome.nautilus.list-view default-zoom-level 'smaller'
gsettings set org.gnome.nautilus.preferences executable-text-activation 'ask'
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal 'XF86Launch1'
gsettings set org.gnome.settings-daemon.plugins.power critical-battery-action 'shutdown'
gsettings set org.gnome.settings-daemon.plugins.power idle-dim false
gsettings set org.gnome.settings-daemon.plugins.power lid-close-ac-action 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power lid-close-battery-action 'nothing'


# update some more system settings
dconf write /org/compiz/profiles/unity/plugins/unityshell/icon-size 32
dconf write /org/compiz/profiles/unity/plugins/core/vsize 1
dconf write /org/compiz/profiles/unity/plugins/core/hsize 5
dconf write /org/compiz/profiles/unity/plugins/opengl/texture-filter 2
dconf write /org/compiz/profiles/unity/plugins/unityshell/alt-tab-bias-viewport false



#----------------------------------------------------------------------------

#echo "Seting up system settings"
#cp ~/.config/dconf/user ./dconf/user
#XDG_CONFIG_HOME=./ dconf dump / > old-gsettings-data.txt

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-381-dev 

sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
rm google-chrome-stable_current_amd64.deb

sudo apt install ssh
sudo apt-get install xclip
ssh-keygen -t rsa -b 4096 -C "svenhaadem@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub



#----------------------------------------------------------------------------
# prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo "===================="
echo "


