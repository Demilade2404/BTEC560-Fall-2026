#Author: Ashade, Date: 09/16/2026, Purpose: Phylogenetic analysis

#Loading the 4 libraries
library(ape)
library(phangorn)
library(phytools)
library(geiger)

#Creating the string dataset

pr.species<- "(cooki,poncensis,gundlachi,pulchellus,stratulus,krugi,evermanni,occultus,cuvieri,cristatellus);"

vert.tree<-read.tree(text = pr.species)

#Plot the phylogenetic-Rooted Plot

plot(vert.tree,no.margin=TRUE,edge.width=2, edge.color = "Green", main = "Rooted Phylogenetic Tree")
