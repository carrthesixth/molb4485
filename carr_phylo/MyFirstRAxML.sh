#!/bin/bash
#SBATCH -J RAxML
#SBATCH -n 1
#SBATCH -t 30:00
#SBATCH --mem=20g
#SBATCH --mail-type=ALL
#SBATCH --mail-user=carrthesixth@gmail.com

#SBATCH --ntasks-per-node=8
#SBATCH --account=inbre-train

#each echo commands is just to make sure that all your code is running properly
echo "starting raxmlHPC run at $(date)."
module load swset gcc raxml

#This next bit of code is all on one line

raxmlHPC-PTHREADS-AVX -T 8 -f a -m GTRGAMMA -p 618 -N 2 -x 309 -s AllBears.aln -n AllBearsTree -w /project/inbre-train/inbre023/molb4485/carr_phylo/AllBearsTree -o GiantPanda

echo "RAxML has finished at $(date)."

#Comment: I didn't feel like making a second shell so I just changed this one

