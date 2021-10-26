#!/bin/sh
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0; \
sudo apt-add-repository https://cli.github.com/packages; \
sudo apt update; \
sudo apt install gh -y; \
gh auth status; \
curl -s https://api.github.com/orgs/ubivius/repos | \
grep "\"name\": \"microservice" | \
sed 's/    "name": "//g' | \
sed 's/",//g' > repository_list.txt
