#! /bin/bash

OPTIONS="Nextjs CRA Vite"

case $3 in
"Nextjs")
  if [ "$1" = "npm" ]; then
    if [ "$2" = "Yes" ]; then
      yarn add @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint eslint-config-next eslint-config-prettier eslint-config-standard eslint-plugin-import eslint-plugin-import-helpers eslint-plugin-n eslint-plugin-prettier eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks prettier -D

      npm set-script lint "eslint --ext .js,.jsx,.ts,.tsx src"
      npm set-script format "prettier --write src "

      cp ./assets/react-ts/eslintrc.txt ./my-next-app/.eslintrc.json
      cp ./assets/react-ts/prettierrc.txt ./my-next-app/.prettierrc.json

    elif [ "$2" = "No" ]; then

    else
      echo "Invalid option"
      exit 1
    fi
  elif [ "$1" = "yarn" ]; then
    if [ "$2" = "Yes" ]; then

    elif [ "$2" = "No" ]; then

    else
      echo "Invalid option"
      exit 1
    fi
  else
    echo "Invalid option"
    exit 1
  fi
  ;;
"CRA") ;;
"Vite") ;;
*)
  echo "Invalid option"
  exit 1
  ;;
esac
