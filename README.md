# docker-kali-jupyter
Run with:
```
docker run --privileged --cap-add=ALL -p 6080:6080  -p 5901:5901 -p 5900:5900 -p 8888:8888 -p 2222:2222 -it jasha/kali-jupyter
```
Optional:
## Persistant Notebooks:
jupyter notebook will run in /home/, if you want to persist the notebooks map it with 
```
-v /yourfolder/:/home/
```
## Using Openvpn
```
-v /home/user/myvpnfile.opvn:/vpn.opvn
```

for the openvpn you might need to run 
```
sudo modprobe tun
```
 on the host machiene

The password for SSH "toor", please don't run this on a public network! For academic use only!
On VNC (Port 5901) and Jupyter (Port 8888) is NO PASSWORD