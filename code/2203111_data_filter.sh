#!bin/bash
file_name=$1
field_name=$2
field_value=$3
t=${file_name:0:2}
touch "$t"_"$field_name"_"$field_value".csv
echo $"file name = $1 ;field name = $2 ; field value = $3" >> "$t"_"$field_name"_"$field_value".csv
wc -l $1 >> "$t"_"$field_name"_"$field_value".csv
head -n 1 $1 >> "$t"_"$field_name"_"$field_value".csv



