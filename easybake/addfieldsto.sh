#!/bin/bash
#$1 should be -f
#$2 should be the path to the file 
#$3 - $x should be the fields to add

#help menu
if [ $1 == '-h' ]
then 
	echo ""
	echo "Usage:"
	echo ""
	echo 'easybake/addfieldsto.sh -f "<path to the file>"  "<field_1>" "<field_2>" ... "<field_n>"'
	echo ""
fi

#use sed to insert after the '//mark', but need to figure out how to loop this 
sed -i "s/\/\/mark/\$$3;\n\/\/mark\n/g"
