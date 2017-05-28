#!/bin/bash
set -x


if [[ -n $NODES_URL_FILE ]]; then
    wget $NODES_URL_FILE -O /tmp/nodes_file.txt
    cat /tmp/nodes_file.txt | xargs npm install -g
fi

# we are going to use this in user-auth. install locally
npm install bcryptjs randomstring when request debug
if [[ -n $AUTH_URL ]]; then
    echo "Using http based auth!"
    export AUTH_METHOD="http";
else
    export AUTH_METHOD="passwd";
    node /app/gen_password.js
fi


node-red -s /app/settings.js
