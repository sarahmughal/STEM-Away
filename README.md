# Construction and Analysis of a ceRNA Network Reveals Potential Prognostic Markers in Colorectal Cancer

Colorectal cancer (CRC) is one of the leading causes of cancer-related deaths worldwide and is derived from an accumulation of genetic and epigenetic changes. This project explores potential prognostic markers in CRC via the construction and in-depth analysis of a competing endogenous RNA (ceRNA) network which was generated through a four-step process in R. 

Identifying new prognostic biomarkers is essential for CRC, as this contributes to exploring the mechanisms of metastasis as well as surveying candidate gene targets for therapy.

# Steps of microarray data analysis:
## Data preparation

1. Quality control:
         Single-array metrics (RNA degradation, hybridization, spike-in) | 
Multi-array metrics (boxplots, clustering, RLE, NUSE) | 
R packages (simpleaffy*, affyPLM and arrayQualityMetrics, Qcmetrics,
affyQCReport)

2. Data preprocessing:
          Background correction (MM&PM, MAS5, RMA, GCRMA) | Normalization
         (scaling, cyclic Loess and Quantile normalization) | Summarization (mean,
         median, weighted) | Log2 transformation (log2())
3. R packages (affy*, limma, gcrma*, beadarray, lumi)

4. Gene annotation and filtering:
R packages (filtergene*, annotate*, WGCNA)

## Visualization of data on PCA
1. R packages (stats::prcomp()]*, factoextra*, dudi.pca)

## Supervised analysis
1. Differential gene expression analysis R packages: limma*, samr, ClassComparison, p.adjust() 
2. Gene annotation and filtering R packages: filtergene*, annotate*, WGCNA 
3. Visualization (heatmaps, PCA and violinplots) R packages: pheatmap*, ComplexHeatmap, factoextra*, ggplot2

## Functional analysis
R package: clusterprofiler*, GOplot, enrichR, External tools: enrichR, GSEA, stringDB, Survival analysis, External tools (GEPIA), R package (survminer)
