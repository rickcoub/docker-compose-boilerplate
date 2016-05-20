#!/bin/sh

CONTEXT_NAME="default"

if [ $# -eq 0 ]
then
    echo "Please, provide all arguments. Check README"
fi

if [ $# -eq 1 ]
then
    CONTEXT_NAME=$1
fi

if ! [ -d "$CONTEXT_NAME" ]; then
    echo "CONTEXT '$CONTEXT_NAME' not exists. Please, check README";
    exit 1;
fi

cd src/$CONTEXT_NAME && docker-compose  build && docker-compose up -d && cd ..




