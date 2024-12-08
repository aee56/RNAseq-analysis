#!/bin/bash
#SBATCH --job-name=HTseqWTB1.SBATCH --output=z01.%x
#SBATCH --mail-type=END,FAIL --mail-user=aee56@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=72:00:00
#SBATCH --mem=4G

#-------------------------------------------------------------#
# This script uses htseq to count and assign reads to genes #
#--------------------------------------------------------------#

source activate htseq

#- Set variables ---------------------------------------------------------#

htseq=/home/paa9/.conda/envs/htseq/bin/htseq-count

bam=/home/aee56/RNAseq/bamfiles/WTB1.srt.bam

ref=/home/aee56/RNAseq/GCF_000182965.3_ASM18296v3_genomic.gtf

#- RUN htseq-count ---------------------------------------------------#

$htseq -f bam -r pos -s no -t exon -i gene_id $bam $ref > WTB1_htseqCount

