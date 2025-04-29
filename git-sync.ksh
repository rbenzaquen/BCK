#!/bin/bash

# Sincronizar proyecto BCK con GitHub

# Verificar cambios locales
if [[ -n $(git status --porcelain) ]]; then
  echo "Guardando cambios locales..."
  git add .
  git commit -m "sync"
else
  echo "No hay cambios locales para commitear."
fi

# Hacer pull de la rama main
echo "Haciendo pull de main..."
git pull origin main

# Hacer push de la rama main
echo "Haciendo push a main..."
git push origin main

echo "Sync completo ✅"

