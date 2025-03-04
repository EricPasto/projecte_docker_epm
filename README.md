# 🚀 Configuració d'un entorn Docker amb Flask, PostgreSQL i Developer  

Aquest projecte configura un entorn amb tres serveis en contenidors Docker:  

- **Flask**: Aplicació web servida amb Gunicorn, amb un servidor SSH.  
- **PostgreSQL**: Base de dades PostgreSQL amb dades persistents.  
- **Developer**: Entorn de desenvolupament basat en Ubuntu 24.04 amb XFCE4, VS Code, SSH, VNC i PostgreSQL Client.  

## 📂 Estructura del projecte  


#### 📁 projecte_docker
#### │── 📂 flask_app
#### │   │── app.py
#### │   │── Dockerfile
#### │   │── requirements.txt
#### │── 📂 developer_env
#### │   │── Dockerfile
#### │   │── setup.sh
#### │── docker-compose.yaml
#### │── README.md


---

## 🛠️ Configuració  

### 🔹 **1. Instal·lar Docker i Docker Compose**  
Si no tens Docker i Docker Compose instal·lats, fes-ho amb:  

```bash
sudo apt update && sudo apt install docker docker-compose -y
```

## Clonar aquest repositori
git clone https://github.com/el_teu_usuari/proyecto_docker.git
cd proyecto_docker

## Construir i executar els contenidors
```
docker-compose up --build
```
## 🖥️ Com accedir als serveis
🔹 Flask Web App
URL: http://localhost:5000
🔹 Connexió SSH

## Flask:

```
ssh flaskuser@localhost -p 2222

```

## Developer:
```
ssh developer@localhost -p 2223

```
🔹 Accedir a PostgreSQL des de Developer

## Un cop dins del contenidor developer:

```
psql -h postgres_db -U user -d mydatabase

```

## Connexió VNC a Developer
Connecta’t a localhost:5900 amb un client VNC.

# 📌 Notes
Les credencials d'accés als contenidors són:
### Usuari Flask: flaskuser / password
### Usuari Developer: developer / password
### PostgreSQL: user / password / Base de dades: mydatabase

