#!/usr/bin/env bash

echo "RUNNING"

langs=`env | grep "_PORT" | cut -f1 -d_`

for l in $langs
do
    echo "LANG $l"
    host=$(echo $l|tr '[:upper:]' '[:lower:]')
    port="${l}_PORT"

    mvn test -DMATCHING_URL=http://${host}:${!port}/matching-service \
        -DUSER_ACCOUNT_CREATION_URL=http://${host}:${!port}/account-creation \
        2>&1 | egrep -v "Downloading: http|\sat\s"
done