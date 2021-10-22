#!/bin/bash

echo "Attempting disassembly of $1 ..."

objdump -Dj .text $1 > $1.section.text.txt

if [ -s "$1.section.text.txt" ]
then
	echo "Disassembly successful! Available at: $1.section.text.txt"
	echo "Ripping strings from binary with file offsets..."
	strings -a -t x $1 > $1.strings.txt
	echo "Any strings found in $1 have been written to $1.strings.txt with file offset"
else
	echo "Disassembly failed!"
	echo "Usage: ltdis.sh <program-file>"
	echo "Bye!"
fi
