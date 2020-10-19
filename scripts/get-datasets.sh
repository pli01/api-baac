#!/bin/bash
while read datafile datasets ; do
   curl -L -o ${datafile} ${datasets}
done <<EOF
caracteristiques-2018.csv https://static.data.gouv.fr/resources/base-de-donnees-accidents-corporels-de-la-circulation/20191014-111741/caracteristiques-2018.csv
lieux-2018.csv https://static.data.gouv.fr/resources/base-de-donnees-accidents-corporels-de-la-circulation/20191014-112036/lieux-2018.csv
usagers-2018.csv https://static.data.gouv.fr/resources/base-de-donnees-accidents-corporels-de-la-circulation/20191014-112100/usagers-2018.csv
vehicules-2018.csv https://static.data.gouv.fr/resources/base-de-donnees-accidents-corporels-de-la-circulation/20191014-112113/vehicules-2018.csv
EOF
