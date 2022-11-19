#! /bin/bash

if [ -d ".git" ]; then 
  cd $1
  rm -rf .git
  git init
  git add .
  git commit -m "Initial commit by create-app"
  echo "Git repository created"
  cd ..
  exit 1
else 
  cd $1
  git init
  git add .
  git commit -m "Initial commit by create-app"
  echo "Git repository created"
  cd ..
  exit 1
fi