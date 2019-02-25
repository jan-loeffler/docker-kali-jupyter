#!/bin/bash

service ssh restart
cd home/
for FILE in /*.ovpn; 
do 
    echo ${FILE}
    openvpn --config ${FILE}
    break; 
done

jupyter-notebook --ip=0.0.0.0 --allow-root &

