#!/bin/bash

# Load list of files already parsed 
PARSED_FILES=$(<files_parsed.list)

Iterates over files in ibge_files
shopt -s nullglob
for f in ibge_files/*.zip
do
	filename=$(basename $f)

	# If file was already parsed, skip
	if [[ "$PARSED_FILES" != *"$filename"* ]]; then
	  echo "Parsing $filename..."
		unzip -p ibge_files/$filename | gawk -v FIELDWIDTHS='15 1 20 30 60 8 7 20 10 20 10 20 10 20 10 20 10 20 10 15 15 120 2 40 1 30 3 3 8' -v OFS=';' '{$1=$1 ; print }' | sed 's/ *;/;/g' >> all_data.csv
	
		# Append this file to the list of files parsed
		echo $filename >> files_parsed.list
	fi
done


# Creates database if it doesn't exists

# Parse IBGE file into temp.csv

# Clear "csv" table and import temp.csv

# Extract city identifier and street names from table "csv" 
# and insert into table "streetnames"

# Extract addresses and add to table "addresses"




