#this file is in place in case the operating system is reinstalled. Download the git run the file and all configurations will be saves
# Y.Z. 2024

#set up terminal aliases
mv bash_aliases .bash_aliases
mv bashrc .bashrc
mv .bash_aliases ~/
sudo rm ~/.bashrc
mv .bashrc ~/
source .bash_aliases
source .bashrc
########################
#set background
echo "set background"
mkdir ~/Pictures/backgrounds
mv space ~/Pictures/backgrounds/
#set clock
echo "set clock"
gsettings set org.gnome.desktop.interface clock-format '24h'
#########
#install gits
echo "installing gits"
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme
git clone https://github.com/alvatip/Nordzy-icon
git clone --recursive https://github.com/andresgongora/synth-shell.git
clear
######
#setup gits
echo "setting up gits"
./synth-shell/setup.sh
./WhiteSur-gtk-theme/install.sh --nord -N mojave 
./WhiteSur-gtk-theme/tweaks.sh -f 

./Nordzy-icon/install.sh --total
clear

sudo apt install fonts-powerline
sudo apt install plank

./synth-shell/install.sh

rm -r -f ~/.config/synth-shell
mv synth-shell ~/.config/synth-shell

mv plank ~/.config/plank
rm -r -f ~/.local/share/plank
mv plank-themes/ ~/.local/share/
mv ~/.local/share/plank-themes ~/.local/share/plank
mv plank.desktop ~/.config/autostart/
mv fonts ~/.local/share/

dconf load /org/cinnamon/ < cinnamon-nord.conf
