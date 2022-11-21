#! /bin/bash

select choice in "Yes" "No"; do
  case $choice in
  Yes)
    echo "Installing TailwindCSS..."
    npm install -D tailwindcss@latest postcss@latest autoprefixer@latest
    npx tailwindcss init -p

    echo "Creating tailwind.config.js..."
    rm tailwind.config.js
    cp $HOME/create-app/assets/generics/tailwind.config.txt tailwind.config.js

    if [ ! -d "src" ]; then
      mkdir src
      mkdir src/styles
      cp $HOME/create-app/assets/generics/globals.css src/styles/globals.css
    else
      if [ ! -d "src/styles" ]; then
        mkdir src/styles
        cp $HOME/create-app/assets/generics/globals.css src/styles/globals.css
      else
        cp $HOME/create-app/assets/generics/globals.css src/styles/globals.css
      fi
    fi

    exit 1
    ;;
  No)
    exit 1
    ;;
  esac
done
