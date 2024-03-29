#!/bin/sh
while read line;
do
    cp -Rf src/.github $line;
    sed -i "s/microserviceName/$line/g" "src/Dockerfile";
    cp -Rf src/Dockerfile $line;
    sed -i "s/$line/microserviceName/g" "src/Dockerfile";
    cd $line;
    git add .;
    git commit -m "Adding files from workflows to update branch";
    git push;
    cd ..;
done
