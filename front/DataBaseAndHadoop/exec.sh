#!/bin/bash
docker build ssh/ -t ssh:jdk7 && \
docker-compose up -d
