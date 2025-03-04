#!/bin/bash

# Iniciar SSH
sudo service ssh start

# Configurar i iniciar VNC
vncserver -geometry 1280x800 -depth 24 :1

# Mantenir el contenidor en execució
tail -f /dev/null
