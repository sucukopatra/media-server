#!/bin/bash

echo "Creating directory structure"

# Config directories
mkdir -p /data/config/{jellyfin,jellyseer,radarr,sonarr,prowlarr,qbittorrent,nzbget}

# Media directories
mkdir -p /data/media/{movies,shows}

# Downloads directories (shared for both clients)
mkdir -p /data/downloads/{torrents,nzb}

echo "Setting permissions"

# Set ownership and permissions
chown -R 1000:1000 /data
chmod -R 775 /data

echo "Starting Docker containers"

docker compose up -d

