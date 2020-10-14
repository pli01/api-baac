const createReadStream = require('fs').createReadStream;
const createWriteStream = require('fs').createWriteStream;
const csvjson = require('csvjson');
const toObject = csvjson.stream.toObject();
const stringify = csvjson.stream.stringify();
createReadStream('./caracteristiques-2018.csv', 'latin1')
    .pipe(toObject)
    .pipe(stringify)
    .pipe(createWriteStream('./caracteristiques-2018.json'));

