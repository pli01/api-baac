#!/bin/bash
datasets=https://www.data.gouv.fr/fr/datasets/r/8d0753c2-92a3-48f7-a3cc-133be9bf2e29
datafile=caracteristiques-2018.csv
curl -L -o ${datafile} ${datasets}
