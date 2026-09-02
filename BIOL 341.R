
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

#Fold change analysis for determining significant genes, Up-regulation and Down-regulation of genes
#Fold changes can be performed using subtraction and division
