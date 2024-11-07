#!/bin/bash
#SBATCH --job-name=RNAseqtrimmomatic.SBATCH --output=z01.%x
#SBATCH --mail-type=END,FAIL --mail-user=aee56@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=72:00:00
#SBATCH --mem=4G

#--------------------------------------------------------------------------------------------------------#
# This script runs...       #
#--------------------------------------------------------------------------------------------------------#

#- RUN command ----------------------------------------------------------------#

#set environemnt and load module#
shopt -s expand_aliases
module load trimmomatic

#DEFINE VARIABLES WITH FILE LOCATIONS#

adapters=/home/aee56/RNAseq/TruSeq3-PE.fa

input_R1=/home/aee56/RNAseq/raw_reads/WTB1_1.fq.gz
input_R2=/home/aee56/RNAseq/raw_reads/WTB1_2.fq.gz

output_R1_PE=/home/aee56/RNAseq/WTB1_1.trPE.fq.gz
output_R1_SE=/home/aee56/RNAseq/WTB1_1.trSE.fq.gz

output_R2_PE=/home/aee56/RNAseq/WTB1_2.trPE.fq.gz
output_R2_SE=/home/aee56/RNAseq/WTB1_2.trSE.fq.gz


# run trimmomatic #
trimmomatic PE \
$input_R1 \
$input_R2 \
$output_R1_PE $output_R1_SE \
$output_R2_PE $output_R2_SE \
ILLUMINACLIP:$adapters:2:30:10 \
HEADCROP:15 \
TRAILING:20 \
SLIDINGWINDOW:4:15 \
MINLEN:75



#- FIN -----------------------------------------------------------------------#
