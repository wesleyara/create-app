#! /bin/bash

if [ "$1" = "npm" ]; then
  clear
  echo "You will use Typescript?"

  if [ $2 = "Yes" ]; then
    mkdir my-express-app
    cd my-express-app

    npm init -y
    npm install express dotenv rimraf
    npm install -D typescript @types/express ts-node-dev @types/node eslint eslint-config-prettier eslint-plugin-prettier prettier

    npm set-script dev "ts-node-dev src/index.ts"
    npm set-script build "rimraf dist && tsc --declaration"
    npm set-script start "node dist/index.js"

    mkdir src
    mkdir src/routes
    mkdir public
    cd ..

    cp ./assets/express/src/index.txt ./my-express-app/src/index.ts
    cp ./assets/express/src/routes/index.txt ./my-express-app/src/routes/index.ts
    cp ./assets/express/gitignore.txt ./my-express-app/.gitignore
    cp ./assets/express/tsconfig.txt ./my-express-app/tsconfig.json

    clear
    echo "Want to use Eslint and Prettier?"

    select opt in "Yes" "No"; do
      if [ "$opt" = "Yes" ]; then
        echo "Adding ESLint and Prettier..."
        echo ""

        cp ./assets/express/eslintrc.txt ./my-express-app/.eslintrc.json
        cp ./assets/express/prettierrc.txt ./my-express-app/.prettierrc.json
        cp ./assets/express/prettierignore.txt ./my-express-app/.prettierignore
        cp ./assets/express/eslintignore.txt ./my-express-app/.eslintignore


        echo "Done!"
        break
      else

        echo "Done!"
        break
      fi
    done

    break
  elif [ $2 = "No" ]; then
    mkdir my-express-app
    cd my-express-app

    npm init -y
    npm install express dotenv rimraf
    npm install -D nodemon eslint eslint-config-prettier eslint-plugin-prettier prettier

    npm set-script dev "nodemon src/index.js"
    npm set-script build "rimraf dist && tsc --declaration"
    npm set-script start "node src/index.js"

    mkdir src
    mkdir src/routes
    mkdir public
    cd ..

    cp ./assets/express/src/index.txt ./my-express-app/src/index.js
    cp ./assets/express/src/routes/index.txt ./my-express-app/src/routes/index.js
    cp ./assets/express/gitignore.txt ./my-express-app/.gitignore

    clear
    echo "Want to use Eslint and Prettier?"

    select opt in "Yes" "No"; do
      if [ "$opt" = "Yes" ]; then
        echo "Adding ESLint and Prettier..."
        echo ""

        cp ./assets/express/eslintrc.txt ./my-express-app/.eslintrc.json
        cp ./assets/express/prettierrc.txt ./my-express-app/.prettierrc.json
        cp ./assets/express/prettierignore.txt ./my-express-app/.prettierignore
        cp ./assets/express/eslintignore.txt ./my-express-app/.eslintignore


        echo "Done!"
        break
      else

        echo "Done!"
        break
      fi
    done
  else
    echo "Invalid option"
    break
  fi
elif [ $1 = "yarn" ]; then
  if [ $2 = "Yes" ]; then
    mkdir my-express-app
    cd my-express-app

    npm init -y
    yarn add express dotenv rimraf
    yarn add -D typescript @types/express ts-node-dev @types/node eslint eslint-config-prettier eslint-plugin-prettier prettier

    npm set-script dev "ts-node-dev src/index.ts"
    npm set-script build "rimraf dist && tsc --declaration"
    npm set-script start "node dist/index.js"

    mkdir src
    mkdir src/routes
    mkdir public
    cd ..

    cp ./assets/express/src/index.txt ./my-express-app/src/index.ts
    cp ./assets/express/src/routes/index.txt ./my-express-app/src/routes/index.ts
    cp ./assets/express/gitignore.txt ./my-express-app/.gitignore
    cp ./assets/express/tsconfig.txt ./my-express-app/tsconfig.json

    clear
    echo "Want to use Eslint and Prettier?"

    select opt in "Yes" "No"; do
      if [ "$opt" = "Yes" ]; then
        echo "Adding ESLint and Prettier..."
        echo ""

        cp ./assets/express/eslintrc.txt ./my-express-app/.eslintrc.json
        cp ./assets/express/prettierrc.txt ./my-express-app/.prettierrc.json
        cp ./assets/express/prettierignore.txt ./my-express-app/.prettierignore
        cp ./assets/express/eslintignore.txt ./my-express-app/.eslintignore



        echo "Done!"
        break
      else

        echo "Done!"
        break
      fi
    done
  elif [ $2 = "No" ]; then
    mkdir my-express-app
    cd my-express-app

    npm init -y
    yarn add express dotenv rimraf
    yarn add -D nodemon eslint eslint-config-prettier eslint-plugin-prettier prettier

    npm set-script dev "nodemon src/index.js"
    npm set-script build "rimraf dist && tsc --declaration"
    npm set-script start "node src/index.js"

    mkdir src
    mkdir src/routes
    mkdir public
    cd ..

    cp ./assets/express/src/index.txt ./my-express-app/src/index.js
    cp ./assets/express/src/routes/index.txt ./my-express-app/src/routes/index.js
    cp ./assets/express/gitignore.txt ./my-express-app/.gitignore

    clear
    echo "Want to use Eslint and Prettier?"

    select opt in "Yes" "No"; do
      if [ "$opt" = "Yes" ]; then
        echo "Adding ESLint and Prettier..."
        echo ""

        cp ./assets/express/eslintrc.txt ./my-express-app/.eslintrc.json
        cp ./assets/express/prettierrc.txt ./my-express-app/.prettierrc.json
        cp ./assets/express/prettierignore.txt ./my-express-app/.prettierignore
        cp ./assets/express/eslintignore.txt ./my-express-app/.eslintignore


        echo "Done!"
        break
      else

        echo "Done!"
        break
      fi
    done
  else
    echo "Invalid option"
    break
  fi
else
  echo "Invalid option"
  break
fi
