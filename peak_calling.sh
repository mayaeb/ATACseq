#!/bin/bash
# 
# call peaks with MACS2
#
# Maya Emmons-Bell, 11/22/21
#


echo ""
echo "Calling peaks with MACS2"
echo ""

# single end samples 
for I in $("/maya/ATACseq/data")
do 
	macs2 call peak -f BAMPE -g hs —keep-dup all —cutoff-analysis -n 
done


echo ""
echo "Done!"
echo ""