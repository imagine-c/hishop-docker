#!/bin/bash
docker build hishop-admin-web/ -t admin_web && \
# docker build hishop-front-web/ -t front_web && \
docker-compose up -d
