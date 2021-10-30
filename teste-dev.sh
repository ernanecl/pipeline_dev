#!/bin/bash
sleep 20

regex='Seja muito bem vindo'

body=$(curl http://ec2-54-85-193-42.compute-1.amazonaws.com:30002/login)

if [[ $body =~ $regex ]]
then 
    echo "::::: app dev está no ar :::::"
else
    echo "::::: app dev não está no ar :::::"
    exit 1
fi
