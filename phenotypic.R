library(GEOquery)
gse=getGEO(filename="GSE32323_series_matrix (1).txt.gz")
pheno=gse@phenoData@data
pheno=pheno[-c(1,11,34:44)]
write.table(pheno,file='phenodata.txt')
pheno_data=read.table('phenodata.txt')
View(pheno_data)

library(affy)
dataset2 <- ReadAffy(celfile.path = "GSE32323_RAW")
dataset2 <- dataset2[-c(1,11,34:44)]
cleaned <- rma(dataset2)

cleaned@phenoData@data=pheno_data
View(cleaned@phenoData@data)
cleaned@phenoData@data=cleaned@phenoData@data[c(1,7,9,10,11,19)]
saveRDS(cleaned,file='exprs_phenotypic.rds')
View(cleaned)
