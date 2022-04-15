# ChIPseeker Analysis #

# Citation (from within R, enter citation("ChIPseeker")): Yu G, Wang L, He Q (2015). “ChIPseeker: an R/Bioconductor package for ChIP peak annotation, comparison and visualization.” Bioinformatics, 31(14), 2382-2383. doi: 10.1093/bioinformatics/btv145.


#  Installation: To install this package, start R (version "4.1") and enter: 
# install Bioconductor

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.14")

# install Bioconductor Package "ChIPSeeker"
BiocManager::install("ChIPseeker")

library(ChIPseeker)
Peak_AJH3K4me3 <- read.table("AJ_H3K4me3_combined_peaksFOR UCSC.bed.txt", sep = "\t", header = F)

Peak_AJH3K4me3Gr <- readPeakFile("AJ_H3K4me3_combined_peaksFOR UCSC.bed.txt", as="GRanges")
Peak_AJH3K4me3Gr

# ChiP peaks coverage plot #
# "After peak calling, we would like to know the peak locations over the whole genome, 
# covplot function calculates the coverage of peak regions over chromosomes and generate a figure to visualize. 
# GRangesList is also supported and can be used to compare coverage of multiple bed files."
covplot(Peak_AJH3K4me3Gr)
