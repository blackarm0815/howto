# debian 12 minecraft server
# download the debian 12 netinst iso
#wget https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-12.6.0-amd64-netinst.iso
# put it on a usb drive
# install it on the server

# add the user to sudo
su -
usermod -aG sudo <username>

# exit root account
exit

# download java 22 from https://www.oracle.com/java/technologies/downloads/
wget https://download.oracle.com/java/22/latest/jdk-22_linux-x64_bin.deb
sudo apt install ./jdk-22_linux-x64_bin.deb

# install tmux
sudo apt install tmux -y

# download the minecraft server from https://www.minecraft.net/en-us/download/server
wget https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar

# run the server for the first time
java -jar server.jar

# edit the eula (change false to true)
nano eula.txt

# run the server in tmux
tmux
java -jar server.jar