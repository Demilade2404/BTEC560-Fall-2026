
#Author: Ashade,Date:08/26/2026, Purpose: Microarray analysis

#Install microarray affy package

if(!require("BiocManager", quietly = TRUE))
   install.packages("BiocManager")

BiocManager::install("affy")

#Load the affy package

library(affy)

setwd("C:/Users/oluwa/OneDrive/Desktop")
data <- ReadAffy()
boxplot(data)

#Preprocessing the microarray chips using Normalization

Normalizeddata <- rma(data)

#Boxplot the normalized dataset

Normalizeddata <- exprs(Normalizeddata)
boxplot(Normalizeddata)

#Assume first 2 chips are Cancer/Treatment and the next 2 are Normal/Reference chips

dim(Normalizeddata)

Treatment <- Normalizeddata[,c(1,2)]
Control <- Normalizeddata[,c(3,4)]
dim(Treatment)
dim(Control)

#Taking averages on rows for Treatment and Control so we have 1 column for Treatment and 1 column for Control

Treatment_Mean <- rowMeans(Treatment)
Control_Mean <- rowMeans(Control)
head(Treatment_Mean)

#Fold change analysis for determining significant genes, Up-regulation and Down-regulation of genes
#Fold changes can be performed using subtraction and division

Fold_Changes <- Treatment_Mean - Control_Mean
head(Fold_Changes)

# Any fold change value > 2 is an up-regulated gene and any fold change value < 2 is a down-regulated gene.Any gene between 2 and -2 is an insignificantly expressed gene

 100_g_at     1000_at     1001_at   1002_f_at   1003_s_at     1004_at 
 0.02004328 -0.37687887  0.31352888  0.23368661  0.07965329  0.08178445 
