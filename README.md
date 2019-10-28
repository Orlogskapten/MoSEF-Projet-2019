# Projet Script de recherche de fichier

L'objectif de ce script est de permettre à l'utilisateur de rechercher selon des patterns, dans un répertoire, tous les fichiers qui match. En effet, lors de l'appel du script, l'utilisateur doit renseigner 2 patterns, le premier correspond aux fichiers qu'il souhaite rechercher, et le second argument qui est aussi un pattern, permet d'affiner la recherche pour sortir uniquement les fichiers qui contiennent ce pattern. 
Notre deuxième pattern rensigné par l'utilisateur est insensible à la case, mais aussi n'a pas besoin de contenir de caractères d'échappement. Ceci est rendu possible grâce à cette ligne:

``
find $localisation -name "$1" | xargs grep -iERl "$2"
``

Je vais à présent vous montrer à l'aide d'un exemple, comment initialiser ce script mais aussi quel devrait-être les résultats attendu.

## Exemple d'utilisation:

__1.__ Dans un premier temps, on appelle notre script grâce à la commande bash et on rajoute 2 arguments. Le premier (ici `*.txt`) est relatif au fichier que vous rechercher. Ainsi dans notre exemple, on recherche tous les fichiers avec l'extention .txt.
Puis notre second argument permet d'afficher uniquement les fichiers qui contiennent ce deuxième pattern. Dans notre cas, on est à la recherche d'un fichier contenant une lettre `A`.

![alt text](https://github.com/Orlogskapten/MoSEF-Projet-2019/blob/master/images/initialisation.png)


__2.__ Puis on l'execute et le script nous demande dans quel répertoire souhaitons-nous examiner les fichiers. Ici on décide de rentrer dans le répertoire `dossier_1` qui se situe dans `/home/sorbonne`.

![alt text](https://github.com/Orlogskapten/MoSEF-Projet-2019/blob/master/images/select.png)

__3.__ Enfin, le script nous dit qu'un fichier nommé `/home/sorbonne/dossier_1/test.txt` qui contient le caractère "A" ou "a"

![alt text](https://github.com/Orlogskapten/MoSEF-Projet-2019/blob/master/images/output.png)

Notre script print donc le ou les chemins du ou des fichiers qui correspondent à l'ensemble des critères qui ont été rentrés par l'utilisateur.

---------

Pour plus de précision, se renseigner sur [ce lien github.com](https://github.com/ambalde/MoSEF-Projet-2019).


---------
_PS: dsl pour la faute dans le screenshot_
