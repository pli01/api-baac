let csvToJson = require('convert-csv-to-json');
 
let fileInputName = 'caracteristiques-2018.csv'; 
let fileOutputName = 'caracteristiques-2018.json';
 
csvToJson.fieldDelimiter(',').formatValueByType().generateJsonFileFromCsv(fileInputName,fileOutputName);
