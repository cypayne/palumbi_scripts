#!/bin/bash
#SBATCH -p owners 
#SBATCH --time=48:00:00
#SBATCH --mem=32000
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
########################
# -outfmt 6 XML
# to call: sbatch blastx.sh db_path query.fa 

# Query: translated nucleotide, DB: protein

# note: -max_hsps 1 : gives only the top match so that only unique query-db matches are in output

blastx -db $1 -query $2 -out $1.blast.out -evalue 0.001 -max_hsps 1 -max_target_seqs 1 -num_threads 12 -outfmt 6
#blastx -db $1 -query $2 -out $1.blast.out -evalue 0.001 -num_threads 12 -outfmt 6
