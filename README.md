# RNAseq-analysis
RNAseq analysis and notebook for Genomics and Bioinformatics 
This is the project that we will be working on for a while 

# Files I'm working with 
WTB1_1.fq.gz, WTB1_2.fq.gz 



# Trimming the raw data files 
As a class we decided to use these parameters \
ILLUMINACLIP:$adapters:2:30:10 \
HEADCROP:15 \
TRAILING:20 \
SLIDINGWINDOW:4:15 \
MINLEN:75

here is the Trimmomatic script 
