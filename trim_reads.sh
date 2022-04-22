#!/bin/bash
# 
# Regenerating/melanoma ATACseq analysis - trim reads for downstream peak calling 
#
# Maya Emmons-Bell, 11/22/21

# Trim reads with TrimGalore. Some samples are SE and some are PE.

echo ""
echo "Running TrimGalore"
echo ""

# single end samples 
for I in $("/maya/ATACseq/se_samples" *.fastq | uniq)
do 
	trim_galore -q 20  
done

# paired end samples 
for I in $("/maya/ATACseq/pe_samples" *.fastq | uniq)
do 
	trim_galore -q 20 -paired 
done


echo ""
echo "Done!"
echo ""