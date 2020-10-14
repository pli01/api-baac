# Usage
See [strapi doc](https://strapi.io/documentation/v3.x/content-api/parameters.html#filters)

* Filter per dep
```
curl -s "http://api-bacc.herokuapp.com/caracteristiques?dep=750"
curl -s "http://api-bacc.herokuapp.com/caracteristiques?dep_eq=750"
curl -s "http://api-bacc.herokuapp.com/caracteristiques?dep_eq=750"
curl -s "http://api-bacc.herokuapp.com/caracteristiques?where\[dep_eq\]=750"
```

* Sort caracteristique by dep
```
curl -s  "http://api-bacc.herokuapp.com/caracteristiques?_sort=dep:ASC" 
```
* Limit result length
```
curl -s  "http://api-bacc.herokuapp.com/caracteristiques?_limit=10" 
```
