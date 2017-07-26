#!/bin/bash
# i use this script to start new ansible projects.
# it creates all the directorys i need and touches the files with some content
# 

role=$@

## create base dir and playbook

mkdir -p "$role"/roles/"$role"/{handlers,tasks,vars}
echo "---
# playbook for deploying "$role"

- hosts : "$role"
  roles:
    - "$role"
" >> "$role"/"$role".yml

## default handlers

echo "---

- name: restart "$role"
  service:
    name: "$role"
    state: restarted

- name: start "$role"
  service:
    name: "$role"
    state: started
" >> "$role"/roles/"$role"/handlers/main.yml

## default tasks

echo "---

# install "$role"

- include: handlers/main.yml
" >> "$role"/roles/"$role"/tasks/main.yml

## default vars

echo "---

"$role"_dependencies:

"$role"_packages:

"$role"_repo:

"$role"_key:

"$role"_keyserver:

" >> "$role"/roles/"$role"/vars/main.yml

