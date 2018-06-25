#!/bin/bash
#SBATCH -p owners,spalumbi
#SBATCH -c 4

#usage: sbatch ./genomecov2.sh reference.fasta

# gives coverage for ranges of basepairs (i.e. all basepairs
# in continuous range that have same coverage will be grouped
# and reported with one coverage value)
bedtools genomecov -bga -split -ibam merged-sorted.bam -g $1 > $1.genomecov2.out 
