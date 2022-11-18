#!/bin/bash

chmod +x ./utils/makeProject.sh
OPTIONS="Nextjs CRA Vite Express"

select opt in $OPTIONS; do
  case $opt in
  "Nextjs")
    ./utils/makeProject.sh Nextjs
    break
    ;;
  "CRA")
    ./utils/makeProject.sh CRA
    break
    ;;
  "Vite")
    ./utils/makeProject.sh Vite
    break
    ;;
  "Express")
    ./utils/makeProject.sh Express
    break
    ;;
  *)
    echo "Opção inválida"
    ;;
  esac
done
