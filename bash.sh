#!/bin/bash

echo "What is your name?"

read name

if [ $name ]; then
    echo "$name souds alright to me"
else
    echo "Doesn't sound like anything to me"
fi

echo "$(ifconfig | grep broadcast | awk '{print $2}')"