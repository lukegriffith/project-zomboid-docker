FROM steamcmd/steamcmd

RUN adduser --disabled-password pzuser
RUN mkdir /opt/pzserver
RUN chown pzuser:pzuser /opt/pzserver

USER pzuser
WORKDIR /home/pzuser/
ADD project_zomboid.txt project_zomboid.txt

USER root 

RUN steamcmd +runscript project_zomboid.txt