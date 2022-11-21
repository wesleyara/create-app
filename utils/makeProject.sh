#!/bin/bash

sleep 1
clear
sleep 1

echo "Initializing project using $1..."
echo ""
echo "You will use Typescript?"

select opt in "Yes" "No"; do
  if [ "$opt" = "Yes" ]; then
    echo "Which package manager do you want to use?"

    select manager in "yarn" "npm"; do
      if [ "$manager" = "yarn" ]; then
        if [ $1 = "Vite" ]; then
          yarn create vite my-vite-app --template react-ts
          cd my-vite-app
          yarn

          # Organize the project
          chmod +x $HOME/create-app/modules/organizeDirectory.sh
          $HOME/create-app/modules/organizeDirectory.sh vite

          # Adding TailwindCSS
          chmod +x $HOME/create-app/utils/makeTailwind.sh
          $HOME/create-app/utils/makeTailwind.sh vite

          # Adding Eslint and Prettier
          chmod +x $HOME/create-app/utils/makeEslintPrettier.sh
          $HOME/create-app/utils/makeEslintPrettier.sh vite

          echo "Done!"
          exit 1
        elif [ $1 = "CRA" ]; then
          yarn create react-app my-react-app --template typescript

          # Organize the project
          chmod +x $HOME/create-app/modules/organizeDirectory.sh
          $HOME/create-app/modules/organizeDirectory.sh react

          # Adding TailwindCSS
          chmod +x $HOME/create-app/utils/makeTailwind.sh
          $HOME/create-app/utils/makeTailwind.sh react

          # Adding Eslint and Prettier
          chmod +x $HOME/create-app/utils/makeEslintPrettier.sh
          $HOME/create-app/utils/makeEslintPrettier.sh react


          echo "Done!"
          exit 1
        elif [ $1 = "Nextjs" ]; then
          yarn create next-app my-next-app --ts --no-eslint

          # Organize the project
          chmod +x $HOME/create-app/modules/organizeDirectory.sh
          $HOME/create-app/modules/organizeDirectory.sh next

          # Adding TailwindCSS
          chmod +x $HOME/create-app/utils/makeTailwind.sh
          $HOME/create-app/utils/makeTailwind.sh next

          # Adding Eslint and Prettier
          chmod +x $HOME/create-app/utils/makeEslintPrettier.sh
          $HOME/create-app/utils/makeEslintPrettier.sh next


          echo "Done!"
          exit 1
        elif [ $1 = "Express" ]; then
          chmod +x $HOME/create-app/modules/makeExpressProject.sh
          $HOME/create-app/modules/makeExpressProject.sh yarn Yes
          exit
        fi
      elif [ "$manager" = "npm" ]; then
        if [ $1 = "Vite" ]; then
          npm create vite@latest my-vite-app -- --template react-ts
          cd my-vite-app
          npm install

          # Organize the project
          chmod +x $HOME/create-app/modules/organizeDirectory.sh
          $HOME/create-app/modules/organizeDirectory.sh vite

          # Adding TailwindCSS
          chmod +x $HOME/create-app/utils/makeTailwind.sh
          $HOME/create-app/utils/makeTailwind.sh vite

          # Adding Eslint and Prettier
          chmod +x $HOME/create-app/utils/makeEslintPrettier.sh
          $HOME/create-app/utils/makeEslintPrettier.sh vite


          echo "Done!"
          exit 1
        elif [ $1 = "CRA" ]; then
          npx create-react-app@latest my-react-app --template typescript

          # Organize the project
          chmod +x $HOME/create-app/modules/organizeDirectory.sh
          $HOME/create-app/modules/organizeDirectory.sh react

          # Adding TailwindCSS
          chmod +x $HOME/create-app/utils/makeTailwind.sh
          $HOME/create-app/utils/makeTailwind.sh react

          # Adding Eslint and Prettier
          chmod +x $HOME/create-app/utils/makeEslintPrettier.sh
          $HOME/create-app/utils/makeEslintPrettier.sh react

          echo "Done!"
          exit 1
        elif [ $1 = "Nextjs" ]; then
          npx create-next-app@latest my-next-app --ts --no-eslint

          # Organize the project
          chmod +x $HOME/create-app/modules/organizeDirectory.sh
          $HOME/create-app/modules/organizeDirectory.sh next

          # Adding TailwindCSS
          chmod +x $HOME/create-app/utils/makeTailwind.sh
          $HOME/create-app/utils/makeTailwind.sh next

          # Adding Eslint and Prettier
          chmod +x $HOME/create-app/utils/makeEslintPrettier.sh
          $HOME/create-app/utils/makeEslintPrettier.sh next

          echo "Done!"
          exit 1
        elif [ $1 = "Express" ]; then
          chmod +x $HOME/create-app/modules/makeExpressProject.sh
          $HOME/create-app/modules/makeExpressProject.sh npm Yes
          exit
        fi
      else
        echo "Invalid option"
        exit 1
      fi
    done
  elif [ "$opt" = "No" ]; then
    echo "Which package manager do you want to use?"

    select manager in "yarn" "npm"; do
      if [ "$manager" = "yarn" ]; then
        if [ $1 = "Vite" ]; then
          yarn create vite my-vite-app --template react
          cd my-vite-app
          yarn

          # Organize the project
          chmod +x $HOME/create-app/modules/organizeDirectory.sh
          $HOME/create-app/modules/organizeDirectory.sh vite

          # Adding TailwindCSS
          chmod +x $HOME/create-app/utils/makeTailwind.sh
          $HOME/create-app/utils/makeTailwind.sh vite

          # Adding Eslint and Prettier
          chmod +x $HOME/create-app/utils/makeEslintPrettier.sh
          $HOME/create-app/utils/makeEslintPrettier.sh vite


          echo "Done!"
          exit 1
        elif [ $1 = "CRA" ]; then
          yarn create react-app my-react-app

          # Organize the project
          chmod +x $HOME/create-app/modules/organizeDirectory.sh
          $HOME/create-app/modules/organizeDirectory.sh react

          # Adding TailwindCSS
          chmod +x $HOME/create-app/utils/makeTailwind.sh
          $HOME/create-app/utils/makeTailwind.sh react

          # Adding Eslint and Prettier
          chmod +x $HOME/create-app/utils/makeEslintPrettier.sh
          $HOME/create-app/utils/makeEslintPrettier.sh react


          echo "Done!"
          exit 1
        elif [ $1 = "Nextjs" ]; then
          yarn create next-app my-next-app --no-eslint

          # Organize the project
          chmod +x $HOME/create-app/modules/organizeDirectory.sh
          $HOME/create-app/modules/organizeDirectory.sh next

          # Adding TailwindCSS
          chmod +x $HOME/create-app/utils/makeTailwind.sh
          $HOME/create-app/utils/makeTailwind.sh next

          # Adding Eslint and Prettier
          chmod +x $HOME/create-app/utils/makeEslintPrettier.sh
          $HOME/create-app/utils/makeEslintPrettier.sh next


          echo "Done!"
          exit 1
        elif [ $1 = "Express" ]; then
          chmod +x $HOME/create-app/modules/makeExpressProject.sh
          $HOME/create-app/modules/makeExpressProject.sh yarn No
          exit
        else
          echo "Invalid option"
          exit 1
        fi
      elif [ "$manager" = "npm" ]; then
        if [ $1 = "Vite" ]; then
          npm create vite@latest my-vite-app -- --template react
          cd my-vite-app
          npm install

          # Organize the project
          chmod +x $HOME/create-app/modules/organizeDirectory.sh
          $HOME/create-app/modules/organizeDirectory.sh vite

          # Adding TailwindCSS
          chmod +x $HOME/create-app/utils/makeTailwind.sh
          $HOME/create-app/utils/makeTailwind.sh vite

          # Adding Eslint and Prettier
          chmod +x $HOME/create-app/utils/makeEslintPrettier.sh
          $HOME/create-app/utils/makeEslintPrettier.sh vite


          echo "Done!"
          exit 1
        elif [ $1 = "CRA" ]; then
          npx create-react-app@latest my-react-app

          # Organize the project
          chmod +x $HOME/create-app/modules/organizeDirectory.sh
          $HOME/create-app/modules/organizeDirectory.sh react

          # Adding TailwindCSS
          chmod +x $HOME/create-app/utils/makeTailwind.sh
          $HOME/create-app/utils/makeTailwind.sh react

          # Adding Eslint and Prettier
          chmod +x $HOME/create-app/utils/makeEslintPrettier.sh
          $HOME/create-app/utils/makeEslintPrettier.sh react


          echo "Done!"
          exit 1
        elif [ $1 = "Nextjs" ]; then
          npx create-next-app@latest my-next-app --no-eslint

          # Organize the project
          chmod +x $HOME/create-app/modules/organizeDirectory.sh
          $HOME/create-app/modules/organizeDirectory.sh next

          # Adding TailwindCSS
          chmod +x $HOME/create-app/utils/makeTailwind.sh
          $HOME/create-app/utils/makeTailwind.sh next

          # Adding Eslint and Prettier
          chmod +x $HOME/create-app/utils/makeEslintPrettier.sh
          $HOME/create-app/utils/makeEslintPrettier.sh next


          echo "Done!"
          exit 1
        elif [ $1 = "Express" ]; then
          chmod +x $HOME/create-app/modules/makeExpressProject.sh
          $HOME/create-app/modules/makeExpressProject.sh npm No
          exit
        else
          echo "Invalid option"
          exit 1
        fi
      else
        echo "Invalid option"
        exit 1
      fi
    done
  else
    echo "Invalid option"
    exit 1
  fi
done
