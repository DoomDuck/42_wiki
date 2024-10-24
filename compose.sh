#!/usr/bin/env bash

if [ ! -f "./.env" ]; then
	echo "Generation env files";
	./tools/env-generator.sh;
fi

docker compose down;
docker volume rm 42_wiki_db;
docker compose --env-file .env/database-env up --build;
