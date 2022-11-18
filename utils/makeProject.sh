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
      break
    else
      npm create vite@latest -- --template react
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

      break
    else
      echo "Digite o nome do projeto:"

      read $projectname
      npx create-react-app@latest $((projectname))
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
      break
    else
      npx create-next-app@latest
      break
    fi
  done
fi
