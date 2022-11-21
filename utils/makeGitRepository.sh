#! /bin/bash

if [ -d ".git" ]; then 
  rm -rf .git
  git init
  git add .
  git commit -m "Initial commit by create-app"
  echo "Git repository created"
  exit 1
else 
  git init
  git add .
  git commit -m "Initial commit by create-app"
  echo "Git repository created"
  exit 1
fi