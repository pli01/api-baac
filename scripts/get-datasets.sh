#!/bin/bash
datasets=https://www.data.gouv.fr/fr/datasets/r/6eee0852-cbd7-447e-bd70-37c433029405
datafile=caracteristiques-2018.csv
curl -L -o ${datafile} ${datasets}
