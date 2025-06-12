SHELL := /bin/bash

generate-config:
	set -a && source .env && set +a && envsubst < livekit.template.yaml > livekit.yaml

up:
	docker compose  up -d --build