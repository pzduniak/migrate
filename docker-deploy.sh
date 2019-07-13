#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin && \
docker build --build-arg VERSION="$TRAVIS_TAG" . -t pzduniak/migrate -t pzduniak/migrate:"$TRAVIS_TAG" && \
docker push pzduniak/migrate:"$TRAVIS_TAG" && docker push pzduniak/migrate
