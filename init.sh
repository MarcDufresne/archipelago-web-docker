#!/usr/bin/env bash

cd "$(dirname "$0")" || exit

mkdir -p db
mkdir -p uploads

if [[ ! -f "config.yaml" ]]; then
  cp config-example.yaml config.yaml
fi

if [[ ! -f ".env" ]]; then
  cp .env-example .env
fi

