#!/bin/bash
echo "Installation du projet Android..."
echo "1. Synchronisation Gradle"
./gradlew build

echo "2. Vérification des dépendances"
./gradlew dependencies

echo "Installation terminée!"
