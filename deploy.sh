#!/usr/bin/env bash
set -ex

SSH_USER=guillaume
SSH_HOST=masclet.net
REMOTE_PATH=/home/guillaume/www/nginx-proxy/

rsync -av --delete \
    --exclude=deploy.sh \
    --exclude=README.md \
    --exclude=.git \
    --exclude=.env \
    --exclude=*.dist \
    --exclude=htpasswd/* \
    ./ "$SSH_USER@$SSH_HOST:$REMOTE_PATH"
