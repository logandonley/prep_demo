#!/bin/bash

if [ ! -L roles ]; then
  rm -rf ansible-stacks roles
fi

if [ ! -d roles ]; then
  git clone https://github.com/rht-labs/ansible-stacks.git
  mv ansible-stacks/roles .
fi

ansible-playbook playbook.yml -i inventory_cluster

