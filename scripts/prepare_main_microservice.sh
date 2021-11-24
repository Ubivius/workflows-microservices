#!/bin/sh
while read line;
do
    git clone git@github.com:Ubivius/$line.git;
    cd $line;
    git checkout master;
    git pull;
    git checkout -b hotfix/workflows-update;
    git add .;
    git commit -m "Creating workflows updated branch";
    git push --set-upstream origin hotfix/workflows-update;
    cd ..;
done
