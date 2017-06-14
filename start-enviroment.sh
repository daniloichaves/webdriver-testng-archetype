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
#Excec 
bash compse-compose up

mkdir projects
cd projects


mvn archetype:generate -DarchetypeGroupId=ru.stqa.selenium -DarchetypeArtifactId=webdriver-testng-archetype -DarchetypeVersion=4.0 -DgroupId=com.webdriver -DartifactId=sample



