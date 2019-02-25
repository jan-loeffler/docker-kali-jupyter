#!/bin/bash
count=`ls -1 *.ovpn 2>/dev/null | wc -l`
service ssh restart
if [ $count != 0 ]
then 

for FILE in /*.ovpn; 
do 
    echo ${FILE}
    openvpn --config ${FILE} &
    break; 
done
fi 
cd home/

jupyter-notebook --ip=0.0.0.0 --allow-root 

