CONTAINER_NAME="jupyterbook-template"
# IMAGE_NAME (prérequis: docker build -t jupyterbook-templates:1.0.0 .)
IMAGE_NAME="jupyterbook-templates:1.0.0"
# NETWORK_NAME (prérequis: docker network create network-name)
# NETWORK_NAME="jupyterbook-template-network"

# set -a
# [ -f .env.secrets ] && source .env.secrets
# set +a

docker run --rm \
  --name "$CONTAINER_NAME" \
  --volume "$(pwd):/app" \
  --workdir /app \
  "$IMAGE_NAME" \
  jupyter-book build website/

# docker run --rm -it \
#   --name "$CONTAINER_NAME" \
#   --volume "$(pwd):/app" \
#   --workdir /app \
#   "$IMAGE_NAME" \
#   bash

# ======================================================
# DOCKER_CMD checklist
# ======================================================
# DOCKER_CMD=(docker run)

# ======================================================
# Paramètres généraux
# ======================================================

# Persistance: (--rm supprime le container à la fin)
# --rm \

# Detached mode (background):
# -d \

# Interactive + terminal (avec COMMAND == bash):
# -it \

# Name:
# --name "$CONTAINER_NAME" \

# Hostname:
# --hostname mycontainer \

# Restart policy: `no`, `always`, `on-failure`, `unless-stopped`
# --restart no \

# Labels 
# --label "traefik.enable=true" \
# --label "project=project-name" \

# ======================================================
# Sécurité
# ======================================================

# Exécuter en tant qu’utilisateur non-root 
# --user 1000:1000 \

# Lecture seule du système de fichiers du container
# --read-only \

# Limiter les capacités Linux
# --cap-drop ALL \
# --cap-add NET_BIND_SERVICE \

# Désactiver le réseau si inutile
# --network none \

# ======================================================
# Réseau
# ======================================================

# Network: (prérequis: docker network create network-name)
# --network network-name \
#   --network "$NETWORK_NAME" \

# Ports exposés sur l'hôte:
# -p 80:80 \

# Ajout d’un host:
# --add-host whoami.local:127.0.0.1 \

# Ajout de l’hôte local:
# --add-host host.docker.internal:host-gateway \

# ======================================================
# Volumes et stockage
# ======================================================

# Volumes montés non-docker :
# -v "./munibots:/app/munibots" \
# -v "./pyproject.toml:/app/pyproject.toml" \
# -v "./logs:/tmp" \

# Volumes docker nommés, persistant. (prérequis: docker volume create volume-name):
# -v volume-name:/data \

# ======================================================
# Environnement
# ======================================================

# Fichiers d'environnement:
# --env-file .env \
# --env-file .env.secrets \

# Variables individuelles:
# -e "VAR_NAME=${VAR_NAME}" \

# Workdir:
# --workdir "/app" \

# ======================================================
# Ressources
# ======================================================

# Limiter mémoire et CPU:
# --memory="512m" \
# --cpus="1.0" \

# ======================================================
# Logs
# ======================================================

# Gestion des logs:
# --log-driver json-file \
# --log-opt max-size=10m \
# --log-opt max-file=3 \

# ======================================================
# En dernier: Image et Commande
# ======================================================

# Image:
# image-name:1.0.0 \

# Commande:
# bash -c "super command" \