#!/bin/bash

cd ansible
ansible-playbook -i hosts proviosiona-stg.yml -u ubuntu --private-key /var/lib/jenkins/.ssh/id_rsa
