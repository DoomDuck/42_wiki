#!/usr/bin/env bash
docker compose down && docker volume rm 42_wiki_db && docker compose up --build
