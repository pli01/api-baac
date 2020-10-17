# Usage

* Voir le [format de données](./DATA.md)
* Voir la documentation d utilisation de  l'API: [Documentation](https://api-baac.herokuapp.com/documentation)
* Voir aussi [strapi doc](https://strapi.io/documentation/v3.x/content-api/parameters.html#filters)

## Exemples d utilisation
* afficher la liste des caracteristiques des accidents d un departements (dep)
```
curl -s "http://api-baac.herokuapp.com/caracteristiques?dep=750"
curl -s "http://api-baac.herokuapp.com/caracteristiques?dep_eq=750"
curl -s "http://api-baac.herokuapp.com/caracteristiques?where\[dep_eq\]=750"
```

* afficher la liste des caracteristiques des accidents d un departements (dep) et d'une commune (com)
```
curl -s "http://api-baac.herokuapp.com/caracteristiques?dep=750&com=101"
```

* Trier la liste des caracteristiques des accidents par departement
```
curl -s  "http://api-baac.herokuapp.com/caracteristiques?_sort=dep:ASC" 
```
* Limiter la liste des caracteristiques des accidents
```
curl -s  "http://api-baac.herokuapp.com/caracteristiques?_limit=10" 
```
