getwd()

# installing packages (step 1) ---------------------------------------------------------------

BiocManager::install("ggplot2")
library(affy)
library(affyPLM)
library(sva)
library(AnnotationDbi)
library(hgu133plus2.db)
library(simpleaffy)
library(arrayQualityMetrics)
library(affyQCReport)
library(gcrma)
library(ggplot2)

# reading CEL files (step 2) -------------------------------------------------------------------

raw <- ReadAffy(celfile.path = "~/Desktop/week_3/GSE32323_RAW")

df <- as.data.frame(exprs(raw))
View(head(df))
write.csv(df,file="raw.csv")

# quality control (step 3) ---------------------------------------------------------------------

library("arrayQualityMetrics")
arrayQualityMetrics(expressionset = raw,
                    outdir = "report_for_raw", 
                    force = TRUE, 
                    do.logtransform = TRUE)

# normalizing data (step 4) ------------------------------------------------------------------

normalized <- rma(raw)

# CSV file for normalized data (step 4) ---------------------------------------------------

nraw <- exprs(nraw)

arrayQualityMetrics(expressionset = normalized,
                    outdir = "report_for_nraw", 
                    force = TRUE)

df_norm <- as.data.frame(exprs(normalized))
View(head(df_norm))
write.csv(nraw, file="nraw.csv")

# PCA for raw (step 5) -----------------------------------------------------------------
more_data <- prcomp(nraw, center=FALSE, scale. = FALSE)
summary(more_data)
more2_data <- as.data.frame(more_data$x)
group<-factor(c(rep("control",17),rep("cancer",17)))
library(ggplot2)
library(grid)
library(gridExtra)
pca_plot<- ggplot(more2_data, aes(x = PC1, y = PC2, colour=group)) +
  
  ggtitle("PCA plot") +
  geom_point()

pca_plot
library(simpleaffy)
df_raw <- exprs(raw)
t.df_raw<- t(df_raw)
more_data_raw <- prcomp(t.df_raw, center=FALSE, scale. = FALSE)
more2_data_raw <- as.data.frame(more_data_raw$x)
group<-factor(c(rep("control",17),rep("cancer",17)))
library(ggplot2)
library(grid)
library(gridExtra)

pca_plot_raw<- ggplot(more2_data_raw, aes(x = PC1, y = PC2, colour=group))
+
  ggtitle("Raw PCA plot") +
  geom_point()
pca_plot_raw







raw <- ReadAffy(celfile.path = "~/Desktop/week_3/GSE32323_RAW")
normalized <- rma(raw)
prcompdata <- prcomp(normalized, scale. = FALSE, center = FALSE)
library(ggplot2)
df_norm <- as.data.frame(exprs(normalized))
ggplot(df_norm, aes(x = PC1, y = PC2)) + geom_point()













