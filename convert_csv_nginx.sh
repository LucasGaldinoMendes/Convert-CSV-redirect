#!/bin/bash

inputFile="planilha.csv"
domain="https://www.dominio.com"
line=0
#Line begin redirects in csv
lineBegin=3

while IFS=',' read -r col1 col2 col3; do
    line=$((line + 1))
    if [ "$line" -ge $lineBegin ]; then
        oldUrl=$(echo "$col2" | xargs | sed "s|$domain||")
        newUrl=$(echo "$col3" | xargs)
        echo -e "location = $oldUrl { \n	return 301  $newUrl; \n} "
    fi
done < "$inputFile"
