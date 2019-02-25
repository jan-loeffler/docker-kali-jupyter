FROM kalilinux/kali-linux-docker
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y metasploit-framework