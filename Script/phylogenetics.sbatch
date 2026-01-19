#!/bin/bash

#SBATCH -p batch
#SBATCH -t 8:00:00
#SBATCH --nodes=1
#SBATCH --job-name="RAxML"
#SBATCH --ntasks-per-node=32
#SBATCH --mail-user=your.email@gmail.com
#SBATCH --mail-type=begin,end

echo "RAxML started at `date`"

module load raxml

raxml -s input.faa -n output.nwk -m PROTCATAUTO -f a -x 12345 -p 12345 -N 100 -o -T 32

raxml -s input.fna -n output.nwk -m GTRGAMMA -f a -x 12345 -p 12345 -N 100 -o -T 32

# for all options: raxml -h
# [-f] option selects algorithm; 'a' is for rapid Bootstrap analysis and search for best-scoring ML tree in one porgram run
# [-x] option sets a seed and turns on rapid bootstrapping
# [-p] option sets a seed for parsimony inferences
# [-N] option specifies the number of alternative runs on district starting trees
# [-o] option specifies outgroup to be used: this can be as many seqs as you like separated with no space commas

echo "RAxML finished at `date`"
