#! /bin/bash

EXTENSION="jsx"
FOLDER="react"

if [ $1 != "vite" ]; then
  cd my-$1-app
fi

if [ -f "tsconfig.json" ]; then
  EXTENSION="tsx"
  FOLDER="react-ts"
fi

case $1 in
"vite")
  rm src/index.css
  rm src/App.css
  rm -rf src/assets

  cp $HOME/create-app/assets/$FOLDER/vite/src/main.txt src/main.$EXTENSION
  cp $HOME/create-app/assets/$FOLDER/vite/src/App.txt src/App.$EXTENSION
  ;;
"next")
  mkdir src

  mv pages src/pages
  mv styles src/styles

  rm -rf src/styles
  rm -rf src/pages/api

  cp $HOME/create-app/assets/$FOLDER/next/src/pages/index.txt src/pages/index.$EXTENSION
  cp $HOME/create-app/assets/$FOLDER/next/src/pages/_app.txt src/pages/_app.$EXTENSION
  ;;
"react")
  rm public/logo192.png
  rm public/logo512.png
  rm public/manifest.json
  rm public/robots.txt
  rm src/App.css
  rm src/index.css
  rm src/logo.svg

  rm src/App.test.js
  rm src/reportWebVitals.js
  rm src/setupTests.js
  rm src/App.test.ts
  rm src/reportWebVitals.ts
  rm src/setupTests.ts

  cp $HOME/create-app/assets/$FOLDER/react/src/index.txt src/index.$EXTENSION
  cp $HOME/create-app/assets/$FOLDER/react/src/App.txt src/App.$EXTENSION
  ;;
esac

cd ..
