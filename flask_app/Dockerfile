FROM python:3.10

# Instal·lar paquets necessaris
RUN apt-get update && apt-get install -y openssh-server gunicorn

# Crear l'usuari ssh
RUN useradd -m -s /bin/bash flaskuser && echo "flaskuser:password" | chpasswd

# Crear carpetes necessàries
RUN mkdir /var/run/sshd

# Instal·lar dependències de Flask
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar aplicació
COPY app.py .

# Exposar ports
EXPOSE 5000 22

# Iniciar SSH i Gunicorn
CMD service ssh start && gunicorn --bind 0.0.0.0:5000 app:app
