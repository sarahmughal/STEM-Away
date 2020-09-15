# Construction and Analysis of a ceRNA Network Reveals Potential Prognostic Markers in Colorectal Cancer

Colorectal cancer (CRC) is one of the leading causes of cancer-related deaths worldwide and is derived from an accumulation of genetic and epigenetic changes. This project explores potential prognostic markers in CRC via the construction and in-depth analysis of a competing endogenous RNA (ceRNA) network which was generated through a four-step process in R. 

Identifying new prognostic biomarkers is essential for CRC, as this contributes to exploring the mechanisms of metastasis as well as surveying candidate gene targets for therapy.

Steps of microarray data analysis
1. Data preparation
   a. Quality control
       i. Single-array metrics (RNA degradation, hybridization, spike-in)
       ii. Multi-array metrics (boxplots, clustering, RLE, NUSE)
       iii. R packages: simpleaffy*, affyPLM and arrayQualityMetrics, Qcmetrics,
affyQCReport
   b. Data preprocessing
       i. Background correction (MM&PM, MAS5, RMA, GCRMA), Normalization
         (scaling, cyclic Loess and Quantile normalization), Summarization (mean,
         median, weighted)
       ii. Log2 transformation (log2())
iii. R packages: affy*, limma, gcrma*, beadarray, lumi
c. Gene annotation and filtering
i. R packages: filtergene*, annotate*, WGCNA

2. Visualization of data on PCA
a. R packages: stats::prcomp()]*, factoextra*, dudi.pca

3. Supervised analysis
a. Differential gene expression analysis
i. R packages: limma*, samr, ClassComparison, p.adjust()
b. Gene annotation and filtering
i. R packages: filtergene*, annotate*, WGCNA
c. Visualization: heatmaps, PCA and violinplots
i. R packages: pheatmap*, ComplexHeatmap, factoextra*, ggplot2

4. Functional analysis
a. R package: clusterprofiler*, GOplot, enrichR
b. External tools: enrichR, GSEA, stringDB
c. Survival analysis
i. External tools (GEPIA)
ii. R package (survminer)
