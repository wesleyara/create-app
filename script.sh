#!/bin/bash

chmod +x $HOME/create-app/utils/makeProject.sh
OPTIONS="Nextjs CRA Vite Express"

select opt in $OPTIONS; do
  case $opt in
  "Nextjs")
    $HOME/create-app/utils/makeProject.sh Nextjs
    break
    ;;
  "CRA")
    $HOME/create-app/utils/makeProject.sh CRA
    break
    ;;
  "Vite")
    $HOME/create-app/utils/makeProject.sh Vite
    break
    ;;
  "Express")
    $HOME/create-app/utils/makeProject.sh Express
    break
    ;;
  *)
    echo "Opção inválida"
    ;;
  esac
done
