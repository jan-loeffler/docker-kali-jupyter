FROM kalilinux/kali-linux-docker
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y metasploit-framework
RUN apt install -y jupyter-notebook
RUN apt install -y python3-pip python3-ipython python3-ipykernel
RUN pip3 install bash_kernel
RUN python3 -m bash_kernel.install
RUN apt install -y openssh-server vim
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "Port 2222" >> /etc/ssh/sshd_config
RUN echo "root:easytoguess"|chpasswd
RUN pip3 install jupyter_contrib_nbextensions
RUN jupyter nbextensions_configurator enable --user
RUN apt install -y openvpn
ADD start.sh /
RUN chmod +x /start.sh
CMD [ "/start.sh" ]