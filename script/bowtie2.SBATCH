#!/bin/bash
#SBATCH --job-name=bowtie2.SBATCH --output=z01.%x
#SBATCH --mail-type=END,FAIL --mail-user=aee56@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=72:00:00
#SBATCH --mem=4G

#------------------------------------------------------------------------------------------$
# This script runs...       #
#------------------------------------------------------------------------------------------$

#- RUN command ----------------------------------------------------------------#

#set environemnt and load module#
module load bowtie2/2.5.3

#DEFINE VARIABLES WITH FILE LOCATIONS#

ref_genome=/home/aee56/RNAseq/reference_genome_index

input_R1=/home/aee56/RNAseq/WTB1_1.trPE.fq.gz
input_R2=/home/aee56/RNAseq/WTB1_2.trPE.fq.gz



# run bowtie2 #
bowtie2 -x $ref_genome \
-1 $input_R1 \
-2 $input_R2 \
-S WTB1.sam

# module unload #

module unload bowtie2

#- FIN -----------------------------------------------------------------------#
