#! /bin/bash

MANAGER_MESSAGE="npm install"

EXTENSION="jsx"
FOLDER="react"

if [ $1 != "vite" ]; then
  cd my-$1-app
fi

if [ -f "yarn.lock" ]; then
  MANAGER_MESSAGE="yarn add"
fi

if [ -f "tsconfig.json" ]; then
  EXTENSION="tsx"
  FOLDER="react-ts"
fi

echo "You want to install TailwindCSS?"
select choice in "Yes" "No"; do
  case $choice in
  Yes)
    echo "Installing TailwindCSS..."
    $MANAGER_MESSAGE -D tailwindcss@latest postcss@latest autoprefixer@latest
    npx tailwindcss init -p

    echo "Creating tailwind.config.js..."
    rm tailwind.config.cjs
    cp $HOME/create-app/assets/generics/tailwind.config.txt tailwind.config.cjs

    if [ ! -d "src" ]; then
      mkdir src
      mkdir src/styles
      cp $HOME/create-app/assets/generics/globals.css src/styles/globals.css
    else
      if [ ! -d "src/styles" ]; then
        mkdir src/styles
        cp $HOME/create-app/assets/generics/globals.txt src/styles/globals.css
      else
        cp $HOME/create-app/assets/generics/globals.txt src/styles/globals.css
      fi
    fi

    case $1 in
    vite)
      cp $HOME/create-app/assets/$FOLDER/vite/src/main-with-tailwind.txt src/main.$EXTENSION
      ;;
    react)
      cp $HOME/create-app/assets/$FOLDER/react/src/index-with-tailwind.txt src/index.$EXTENSION
      ;;
    next)
      cp $HOME/create-app/assets/$FOLDER/next/src/pages/_app-with-tailwind.txt src/pages/_app.$EXTENSION
      ;;
    esac

    exit 1
    ;;
  No)
    exit 1
    ;;
  esac
done
