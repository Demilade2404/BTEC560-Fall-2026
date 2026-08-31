
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
