#!/bin/bash
# Copy 3905_mac_extension_input.csv, 3905.cnf.xml  and this file in same directory 

while IFS=, read -r col1 col2
do 
 cp 3905.cnf.xml $col1.cnf.xml
 filename=$col1.cnf.xml
 sed -i "s/EXTENSION_NUMBER/$col2/g" "$filename"
done < 3905_mac_extension_input.csv 
