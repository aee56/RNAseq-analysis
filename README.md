# RNAseq-analysis
RNAseq analysis and notebook for Genomics and Bioinformatics 
This is the project that we will be working on for a while 


# Experimental design 

Candida albicans: a commensal
yeast that that can cause a variety
of pathologies- i.e., urinary tract, genital,
mucosal and blood infections. 

Experimental Treatments: \
Thi+: grown in the presence of
thiamine \
Thi-: grown in absence of
thiamine


# Files I'm working with 
WTB1_1.fq.gz, WTB1_2.fq.gz 

# Running fastQC on raw data 

Total sequences: 20723512 \
Total bases: 3.1 Gbp

# Trimming the raw data files 
As a class we decided to use these parameters \
ILLUMINACLIP:$adapters:2:30:10 \
HEADCROP:15 \
TRAILING:20 \
SLIDINGWINDOW:4:15 \
MINLEN:75

Trimmomatic script can be found under [script](script/trimmomatic.SBATCH)

 

# Running fastQC on clean data 

 Total sequences: 	19873183 \
 Total bases: 2.6 Gbp

 # Downloading reference genome 

 We downloaded the ref genome sequence file for Candida albicans (GCF_000182965.3_ASM18296v3_genomic.fna) \
 We also downloaded the gtf annotation file for Candida albicans (GCF_000182965.3_ASM18296v3_genomic.gtf.gz) \
 Both files were downloaded from NCBI 

# Using Bowtie2

Bowtie2 was used to align short DNA sequencing reads to the reference genome. /

The Bowtie2 SBATCH script can be found under [script](script/bowtie2.SBATCH)

# Using HTseq 

HTseq was used to count the number of sequencing reads that align to specific genomic features based on the reference annotation file.

The HTseq SBATCH script can be found under [script](script/HTseq.SBATCH)

# Results 

Volcano plot is [here](R_volcano_plot_correct.pdf)

Significant genes (13 of them) [here](signif_TH-vTH+.csv)

Significant genes and their biological function [here](

PCA plot [here](TH-vTH+_pcaplot.png)

# Interpretation of results


