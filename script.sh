#!/bin/bash

chmod +x ./utils/makeProject.sh
OPTIONS="Nextjs CRA Vite"

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
  *)
    echo "Opção inválida"
    ;;
  esac
done
