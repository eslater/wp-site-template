#!/bin/bash

if [ "$1" = "" ]; then
    echo "Please provide bucket name"
    exit 0

fi

aws s3 cp s3://$1/wp-content/uploads wp-content/uploads --recursive
