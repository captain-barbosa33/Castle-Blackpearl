#!/bin/bash

cd /home/barbosa/Castle-Blackpearl
$SHELL
git add .
commit_message="${1:-'Automated commit'}"
git commit -m "$commit_message"
#git commit -m "$date"
git push -u origin main 
