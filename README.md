# RNAseq-analysis
RNAseq analysis and notebook for Genomics and Bioinformatics 
This is the project that we will be working on for a while 

# experimental design 


# Files I'm working with 
WTB1_1.fq.gz, WTB1_2.fq.gz 

# Running fastQC on raw data 


# Trimming the raw data files 
As a class we decided to use these parameters \
ILLUMINACLIP:$adapters:2:30:10 \
HEADCROP:15 \
TRAILING:20 \
SLIDINGWINDOW:4:15 \
MINLEN:75

Trimmomatic script can be found under "scripts" folder and is titled "RNAseq.SBATCH" \

