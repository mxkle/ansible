#!/bin/bash
# i use this script to start new ansible projects.
# it creates all the directorys i need and touches the files with some content
#


## loop over input

for role in "$@"; do

echo "$role"

## create base dir and playbook

mkdir -p roles/"$role"/{handlers,tasks,vars}
echo "---
# playbook for deploying "$role"

- hosts : "$role"
  roles:
    - base
    - "$role"
" > "$role".yml

## default handlers

echo "---
# handlers for "$role"

- name: restart "$role"
  service:
    name: "$role"
    state: restarted

- name: start "$role"
  service:
    name: "$role"
    state: started
" > roles/"$role"/handlers/main.yml

## default tasks

echo "---
# install "$role"

- include: handlers/main.yml
" > roles/"$role"/tasks/main.yml

## default vars

echo "---
#vars for "$role"

"$role"_dependencies:

"$role"_packages:

"$role"_repo:

"$role"_key:

"$role"_keyserver:

" > roles/"$role"/vars/main.yml
done
