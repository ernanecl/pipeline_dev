#!/bin/bash
sleep 20

regex='Seja muito bem vindo'

body=$(curl http://ec2-54-85-193-42.compute-1.amazonaws.com:30004/login)

if [[ $body =~ $regex ]]
then 
    echo "::::: app prod está no ar :::::"
else
    echo "::::: app prod não está no ar :::::"
    exit 1
fi
