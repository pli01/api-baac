# Data

* source: (https://www.data.gouv.fr/fr/datasets/base-de-donnees-accidents-corporels-de-la-circulation/)
* description des champs (https://static.data.gouv.fr/resources/base-de-donnees-accidents-corporels-de-la-circulation/20191014-112328/description-des-bases-de-donnees-onisr-annees-2005-a-2018.pdf)
* Fichiers Caractéristiques – Lieux – Véhicules – Usagers

* Reference data.gouv.fr (https://www.data.gouv.fr/datasets/53698f4ca3a729239d2036df/rdf.json)
* student works from https://medium.com/@neveldo/les-accidents-de-la-circulation-de-2005-%C3%A0-2016-visualis%C3%A9s-avec-r-b3e2f25266d9

# Fichier caracteristiques
```
# extrait de la rubrique CARACTERISTIQUES
Num_Acc
Numéro d'identifiant de l’accident
jour
Jour de l'accident
mois
Mois de l'accident
an
Année de l'accident
hrmn
Heure et minutes de l'accident
lum
Lumière : conditions d’éclairage dans lesquelles l'accident s'est produit 1 – Plein jour
2 – Crépuscule ou aube
3 – Nuit sans éclairage public
4 - Nuit avec éclairage public non allumé 5 – Nuit avec éclairage public allumé
dep
Département : Code INSEE (Institut National de la Statistique et des Etudes Economiques) du département suivi d'un 0 (201 Corse-du-Sud - 202 Haute-Corse)
com
Commune : Le numéro de commune est un code donné par l‘INSEE. Le code comporte 3 chiffres calés à droite.
agg
Localisation :
1 – Hors agglomération
2 – En agglomération
int
Intersection :
1 – Hors intersection
 atm
2 – Intersection en X
3 – Intersection en T
4 – Intersection en Y
5 - Intersection à plus de 4 branches 6 - Giratoire
7 - Place
8 – Passage à niveau 9 – Autre intersection
Conditions atmosphériques : 1 – Normale
2 – Pluie légère
3 – Pluie forte
4 – Neige - grêle
5 – Brouillard - fumée 6 – Vent fort - tempête 7 – Temps éblouissant 8 – Temps couvert
9 – Autre
4
col
Type de collision :
1 – Deux véhicules - frontale
2 – Deux véhicules – par l’arrière
3 – Deux véhicules – par le coté
4 – Trois véhicules et plus – en chaîne
5 – Trois véhicules et plus - collisions multiples 6 – Autre collision
7 – Sans collision
adr
Adresse postale : variable renseignée pour les accidents survenus en agglomération
gps
Codage GPS :1 caractère indicateur de provenance :
M = Métropole
A = Antilles (Martinique ou Guadeloupe) G = Guyane
R = Réunion
Y = Mayotte
Coordonnées géographiques en degrés décimaux : lat : Latitude
long : Longitude
```

