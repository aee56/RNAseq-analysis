#!/bin/bash
#SBATCH --job-name=homework4.SBATCH --output=z01.%x
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

adapters=/home/aee56/HW4_input_files/TruSeq3-PE.fa

input_R1=/home/aee56/HW4_input_files/EC-12_R1_001.fastq.gz
input_R2=/home/aee56/HW4_input_files/EC-12_R2_001.fastq.gz

output_R1_PE=/home/aee56/HW4_output_files/EC-12_R1_trmPE.fq.gz
output_R1_SE=/home/aee56/HW4_output_files/EC-12_R1_trmSE.fq.gz

output_R2_PE=/home/aee56/HW4_output_files/EC-12_R2_trmPE.fq.gz
output_R2_SE=/home/aee56/HW4_output_files/EC-12_R2_trmSE.fq.gz


# run trimmomatic #
trimmomatic PE \
$input_R1 \
$input_R2 \
$output_R1_PE $output_R1_SE \
$output_R2_PE $output_R2_SE \
LEADING:10 \
TRAILING:10 \
ILLUMINACLIP:$adapters:2:30:10 \
SLIDINGWINDOW:4:15 \
MINLEN:75



#- FIN -----------------------------------------------------------------------#
