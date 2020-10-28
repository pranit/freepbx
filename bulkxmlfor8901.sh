#!/bin/bash
# Copy 8901_mac_extension_input.csv, 8901.cnf.xml  and this file in same directory 

while IFS=, read -r col1 col2
do 
 cp 8901.cnf.xml $col1.cnf.xml
 filename=$col1.cnf.xml
 sed -i "s/EXTENSION_NUMBER/$col2/g" "$filename"
done < 8901_mac_extension_input.csv 
