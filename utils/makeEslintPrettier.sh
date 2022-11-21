#! /bin/bash

OPTIONS="Nextjs CRA Vite"

MANAGER_MESSAGE="npm install"

if [ -f "yarn.lock" ]; then
  MANAGER_MESSAGE="yarn add"
fi

case $1 in
"Nextjs")
  if [ "$2" = "Yes" ]; then
    cd my-next-app

    $MANAGER_MESSAGE @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint eslint-config-next eslint-config-prettier eslint-config-standard eslint-plugin-import eslint-plugin-import-helpers eslint-plugin-n eslint-plugin-prettier eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks prettier -D

    npm set-script lint "eslint --ext .js,.jsx,.ts,.tsx src"
    npm set-script format "prettier --write src"

    cp ./assets/react-ts/eslintrc.txt ./my-next-app/.eslintrc.json
    cp ./assets/react-ts/prettierrc.txt ./my-next-app/.prettierrc.json

    cd ..
  elif [ "$2" = "No" ]; then
    cd my-next-app

    $MANAGER_MESSAGE eslint eslint-config-next eslint-config-prettier eslint-config-standard eslint-plugin-import eslint-plugin-import-helpers eslint-plugin-n eslint-plugin-prettier eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks prettier -D

    npm set-script lint "eslint --ext .js,.jsx,.ts,.tsx src"
    npm set-script format "prettier --write src"

    cp ./assets/react/eslintrc.txt ./my-next-app/.eslintrc.json
    cp ./assets/react/prettierrc.txt ./my-next-app/.prettierrc.json

    cd ..
  else
    echo "Invalid option"
    exit 1
  fi
  ;;
"CRA")
  if [ "$2" = "Yes" ]; then
    cd my-react-app

    $MANAGER_MESSAGE @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint eslint-config-prettier eslint-config-standard eslint-plugin-import eslint-plugin-import-helpers eslint-plugin-n eslint-plugin-prettier eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks prettier -D

    npm set-script lint "eslint --ext .js,.jsx,.ts,.tsx src"
    npm set-script format "prettier --write src"

    cp ./assets/react-ts/eslintrc.txt ./my-react-app/.eslintrc.json
    cp ./assets/react-ts/prettierrc.txt ./my-react-app/.prettierrc.json

    cd ..
  elif [ "$2" = "No" ]; then
    cd my-react-app

    $MANAGER_MESSAGE eslint eslint-config-prettier eslint-config-standard eslint-plugin-import eslint-plugin-import-helpers eslint-plugin-n eslint-plugin-prettier eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks prettier -D

    npm set-script lint "eslint --ext .js,.jsx,.ts,.tsx src"
    npm set-script format "prettier --write src"

    cp ./assets/react/eslintrc.txt ./my-react-app/.eslintrc.json
    cp ./assets/react/prettierrc.txt ./my-react-app/.prettierrc.json

    cd ..
  else
    echo "Invalid option"
    exit 1
  fi
  ;;
"Vite")
  if [ "$2" = "Yes" ]; then
    cd my-vite-app

    $MANAGER_MESSAGE @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint eslint-config-prettier eslint-config-standard eslint-plugin-import eslint-plugin-import-helpers eslint-plugin-n eslint-plugin-prettier eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks prettier -D

    npm set-script lint "eslint --ext .js,.jsx,.ts,.tsx src"
    npm set-script format "prettier --write src"

    cp ./assets/react-ts/eslintrc.txt ./my-react-app/.eslintrc.json
    cp ./assets/react-ts/prettierrc.txt ./my-react-app/.prettierrc.json

    cd ..
  elif [ "$2" = "No" ]; then
    cd my-vite-app

    $MANAGER_MESSAGE eslint eslint-config-prettier eslint-config-standard eslint-plugin-import eslint-plugin-import-helpers eslint-plugin-n eslint-plugin-prettier eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks prettier -D

    npm set-script lint "eslint --ext .js,.jsx,.ts,.tsx src"
    npm set-script format "prettier --write src"

    cp ./assets/react/eslintrc.txt ./my-react-app/.eslintrc.json
    cp ./assets/react/prettierrc.txt ./my-react-app/.prettierrc.json

    cd ..
  else
    echo "Invalid option"
    exit 1
  fi
  ;;
*)
  echo "Invalid option"
  exit 1
  ;;
esac
