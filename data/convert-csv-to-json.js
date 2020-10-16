const createReadStream = require('fs').createReadStream;
const createWriteStream = require('fs').createWriteStream;
const csvjson = require('csvjson');
const toObject = csvjson.stream.toObject();
const stringify = csvjson.stream.stringify();

const inputFile = process.env.INPUT_FILE || './test.csv'
const outputFile = process.env.OUTPUT_FILE || './test.json'
createReadStream(inputFile, 'latin1')
    .pipe(toObject)
    .pipe(stringify)
    .pipe(createWriteStream(outputFile));

console.log("File "+outputFile+" ok");
