#!/bin/bash

# Git aktualisieren
echo "Git wird aktualisiert..."
git pull

# Docker-Images neu ziehen
echo "Docker-Images werden neu gezogen..."
docker compose -f docker/docker-compose.yml  pull

# Docker-Images bauen
echo "Docker-Images werden gebaut..."
docker compose -f docker/docker-compose.yml build

# Docker-Container starten
echo "Docker-Container werden gestartet..."
docker compose -f docker/docker-compose.yml up -d

echo "Aktualisierung abgeschlossen."
