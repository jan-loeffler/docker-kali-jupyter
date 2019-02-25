#!/bin/bash

service ssh restart
cd home/
jupyter-notebook --ip=0.0.0.0 --allow-root