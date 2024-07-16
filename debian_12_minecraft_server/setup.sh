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

# download the minecraft server from https://www.minecraft.net/en-us/download/server
wget https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar

# run the server for the first time
java -jar server.jar

# edit the eula (change false to true)
nano eula.txt

# find the ip address of the server
ip a | grep 192

# run the server in tmux
tmux
java -jar server.jar