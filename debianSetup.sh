#! /bin/bash 

cd ~/

# Inital update
sudo apt-get update -y && sudo apt-get upgrade -y 

# installing tools avaliable from the repo
sudo apt-get install tor zsh htop git python3.11 python3-pip ipython3 golang-go -y

# Installing the desktop environment
sudo apt-get install ubuntu-mate-desktop -y 

# Removing unwanted software
sudo apt purge libreoffice* -y
sudo apt purge atril -y
sudo apt purge evolution -y
sudo apt purge byobu -y
sudo apt purge simple-scan -y
sudo apt purge plank -y
sudo apt purge webcamoid -y


# Install drivers for alpha network adaptor
echo "[+] Do you own an alpha network adaptor (y/n)"
read  drivers
if [[ $drivers == "y" ]]; then
	sudo apt-get install rtl8812au-dkms
	sudo apt install dkms
	git clone https://github.com/aircrack-ng/rtl8812au
	cd rtl8812au/
	make
	sudo make install
	cd ~/
fi

# install pentest framework 
git clone https://github.com/trustedsec/ptf
cd ptf
pip install -r requirements.txt
sudo ./ptf

echo "[+] Rebooting system..."
sleep 2
reboot



