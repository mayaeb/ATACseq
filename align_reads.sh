
#!/bin/bash
# 
# align reads to zfish genome using bowtie2 
#
# Maya Emmons-Bell, 11/22/21
#
# 
# Using --very-sensitive, and -X 2000 to allow larger fragment size (default is 500)

echo ""
echo "Aligning using Bowtie2"
echo ""


for I in `ls *.fastq | cut -d "_" -f 1` ;
    do bowtie2 —very-sensitive -X 2000 -x $Bowtie2Index -1 $I*_1.fq.gz -2 $I*_2.fq.gz \
-p $PPN 2> $Ibowtie2.log | $path2samtools sort -@ $PPN -O bam -o $I.sorted.bam $path2samtools index -@ $PPN $WORKDIR/bowtie2/$I.sorted.bam 

done


echo ""
echo "Done!"
echo ""
