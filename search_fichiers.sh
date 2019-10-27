#!/bin/bash

echo "Démarrage de l'algorithme de recherche"
jour_chiffre=$(date +%d)
mois=$(date +%B)
annee=$(date +%Y)
echo ""
echo "Bonjour $USER, on est le $jour_chiffre $mois $annee."

read -p "Quel répertoire souhaitez vous rentrez ?  " rep

localisation=$(locate -l 1 $rep)
resultat_rep=$(find $localisation )

echo "Voici le répertoire $rep: "
echo "$resultat_rep"
