#! /bin/bash

MANAGER_MESSAGE="npm install"

if [ $1 != "vite" ]; then
  cd my-$1-app
fi

if [ -f "yarn.lock" ]; then
  MANAGER_MESSAGE="yarn add"
fi

echo "Want to use Eslint and Prettier?"

select opt in "Yes" "No"; do
  if [ "$opt" = "Yes" ]; then
    if [ -f "tsconfig.json" ]; then
      $MANAGER_MESSAGE -D @typescript-eslint/parser @typescript-eslint/eslint-plugin

      cp $HOME/create-app/assets/react-ts/eslintrc.txt .eslintrc.json
      cp $HOME/create-app/assets/react-ts/prettierrc.txt .prettierrc.json
    else
      cp $HOME/create-app/assets/react/eslintrc.txt .eslintrc.json
      cp $HOME/create-app/assets/react/prettierrc.txt .prettierrc.json
    fi

    $MANAGER_MESSAGE eslint eslint-config-prettier eslint-config-standard eslint-plugin-import eslint-plugin-import-helpers eslint-plugin-n eslint-plugin-prettier eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks prettier -D

    if [ "$1" = "next" ]; then
      $MANAGER_MESSAGE eslint-config-next -D
    fi

    npm set-script lint "eslint --ext .js,.jsx,.ts,.tsx src"
    npm set-script format "prettier --write src"
  elif [ "$opt" = "No" ]; then
    echo "Done!"
  else
    echo "Invalid option"
    exit 1
  fi
done

chmod +x $HOME/create-app/utils/makeGitRepository.sh
$HOME/create-app/utils/makeGitRepository.sh

cd ..
