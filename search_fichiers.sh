#!/bin/bash

#Gestion erreur nombres d'args
if [ "$#" -ne 2 ]; then
	echo "vous n'avez pas rentrer le bon nombre d'arguments"
	echo "Pour rappel, il est demandé de spécifier 2 arguments"
	exit
fi

echo "Démarrage de l'algorithme de recherche"
jour_chiffre=$(date +%d)
mois=$(date +%B)
annee=$(date +%Y)
echo ""
echo "Bonjour $USER, on est le $jour_chiffre $mois $annee."

read -p "Quel répertoire souhaitez vous rentrez ?  " rep

#localisation=$(locate -l 1 $rep)
localisation=$(find / -type d -iname "$rep" 2>/dev/null)

echo "Voici le répertoire $rep: "
echo "$localisation"
echo ""
#recherche du pattern dans $rep
resultat_pattern=$(find $localisation -name "$1" | xargs grep -iERl "$2")

echo "Voici les résultats correspondant au pattern renseigné: "
echo "$resultat_pattern"
