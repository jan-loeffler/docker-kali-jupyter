FROM kalilinux/kali-linux-docker
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y metasploit-framework
RUN apt install -y jupyter-notebook
RUN apt install -y python3-pip python3-ipython python3-ipykernel
RUN pip3 install bash_kernel
RUN python3 -m bash_kernel.install
CMD [ "cd /home/" ]
CMD [ "jupyter-notebook --allow-root" ]