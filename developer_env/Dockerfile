FROM ubuntu:24.04

# Instal·lar paquets bàsics
RUN apt-get update && apt-get install -y \
    xfce4 \
    xfce4-goodies \
    tightvncserver \
    openssh-server \
    sudo \
    curl \
    wget \
    git \
    python3 \
    python3-pip \
    postgresql-client \
    && apt-get clean

# Crear usuari no root
RUN useradd -m developer && echo "developer:password" | chpasswd && adduser developer sudo

# Instal·lar VS Code
RUN curl -fsSL https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 -o vscode.deb \
    && apt install -y ./vscode.deb \
    && rm vscode.deb

# Configurar servidor VNC
USER developer
RUN mkdir -p /home/developer/.vnc
COPY setup.sh /home/developer/setup.sh
RUN chmod +x /home/developer/setup.sh

# Exposar ports SSH i VNC
EXPOSE 22 5900

# Comanda per iniciar VNC i SSH
CMD /home/developer/setup.sh
