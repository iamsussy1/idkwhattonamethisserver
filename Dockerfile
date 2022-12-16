FROM archlinux/archlinux
MAINTAINER End3r <ender4lion@gamil.com>
RUN pacman -Syyu --noconfirm 
ADD server.properties /data/
RUN pacman -S sudo wget base-devel --noconfirm
RUN sudo pacman -S jre-openjdk --noconfirm
RUN sudo pacman -S jdk-openjdk --noconfirm
RUN mkdir kch/ && cd kch && wget https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar && mv spigot-1.8.8-R0.1-SNAPSHOT-latest.jar kchcraft.jar && touch eula.txt && echo "eula=true" >> eula.txt
RUN cd kch && java -Xmx8192M -Xms8192M -jar kchcraft.jar nogui
