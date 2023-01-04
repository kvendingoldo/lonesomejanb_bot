#!/bin/bash

VERSION="rc-0.1.0"
TBOT_TOKEN="TOKEN"

docker run -d \
    -v /home/ubuntu/tbot/:/home/tbot/bot/data \
    -e DB_URL=sqlite:////home/tbot/bot/data/lonesomejan.db \
    -e TG_BOT_TOKEN=${TBOT_TOKEN} \
    kvendingoldo/lonesomejan_bot:${VERSION}
