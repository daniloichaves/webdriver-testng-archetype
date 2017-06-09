#!/bin/bash
docker -v
if [ $? -ne 0 ]; then
    echo "The program 'docker' is currently not installed."
else
    echo "Continuing with dockerized 'docker' way"
fi

docker-compose -v
if [ $? -ne 0 ]; then
    echo "The program 'docker-compose' is currently not installed."
else
    echo "Continuing with dockerized 'docker-compose' way"
fi

#compse-compose up