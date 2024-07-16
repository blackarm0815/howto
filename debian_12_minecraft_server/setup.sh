# download java 22 from https://www.oracle.com/java/technologies/downloads/
wget https://download.oracle.com/java/22/latest/jdk-22_linux-x64_bin.deb

# switch to root user
su

# install java
apt install ./jdk-22_linux-x64_bin.deb

# install tmux
apt install tmux -y

# exit root account
exit

# make minecraft folder
mkdir minecraft
cd minecraft

# download the minecraft server version 1.20.4
wget https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar

# run the server for the first time
java -jar server.jar

# edit the eula (change false to true)
nano eula.txt

# find the ip address of the server
ip a | grep 192

# run the server in tmux
tmux
java -jar server.jar