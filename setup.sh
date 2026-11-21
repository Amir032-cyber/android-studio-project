#!/usr/bin/env bash
set -euo pipefail

echo "Installation du projet Android..."

if [[ -x ./gradlew ]]; then
  GRADLE=./gradlew
elif command -v gradle >/dev/null 2>&1; then
  GRADLE=gradle
else
  echo "Erreur : Gradle introuvable. Installez Gradle 8.0+ ou ajoutez le wrapper Gradle au projet." >&2
  exit 1
fi

echo "1. Compilation"
"$GRADLE" build

echo "2. Vérification des dépendances"
"$GRADLE" dependencies

echo "Installation terminée."
