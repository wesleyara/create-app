#!/bin/bash

sleep 1
clear
sleep 1

if [ $1 = "Vite" ]; then
  echo "Inicializando projeto utilizando Vite..."
  echo ""
  echo "Você vai utilizar Typescript?"

  select opt in "Sim" "Não"; do
    if [ "$opt" = "Sim" ]; then
      npm create vite@latest -- --template react-ts
      echo "Done!"
      break
    else
      npm create vite@latest -- --template react
      echo "Done!"
      break
    fi
  done
elif [ $1 = "CRA" ]; then
  echo "Inicializando projeto utilizando CRA..."
  echo ""
  echo "Você vai utilizar Typescript?"

  select opt in "Sim" "Não"; do
    if [ "$opt" = "Sim" ]; then
      echo "Digite o nome do projeto:"

      read $projectname
      npx create-react-app@latest $((projectname)) --template typescript
      echo "Done!"
      break
    else
      echo "Digite o nome do projeto:"

      read $projectname
      npx create-react-app@latest $((projectname))
      echo "Done!"
      break
    fi
  done
elif [ $1 = "Nextjs" ]; then
  echo "Inicializando projeto utilizando Nextjs..."
  echo ""
  echo "Você vai utilizar Typescript?"

  select opt in "Sim" "Não"; do
    if [ "$opt" = "Sim" ]; then
      npx create-next-app@latest --ts
      echo "Done!"
      break
    else
      npx create-next-app@latest
      echo "Done!"
      break
    fi
  done
elif [ $1 = "Express" ]; then
  echo "Inicializando projeto utilizando Express..."
  echo ""
  echo "Você vai utilizar qual gerenciador de pacotes?"

  chmod +x $HOME/create-app/modules/makeExpressProject.sh
  $HOME/create-app/modules/makeExpressProject.sh
  exit
fi
