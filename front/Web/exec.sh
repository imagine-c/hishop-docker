#!/bin/bash
docker build hishop-front-web/ -t front_web && \
docker-compose up -d
