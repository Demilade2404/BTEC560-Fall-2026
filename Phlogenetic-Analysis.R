#Author: Ashade, Date: 09/11/2026, Purpose: Phylogenetic analysis

#Load the 4 libraries
library(ape)
library(phangorn)
library(phytools)
library(geiger)

#Create some dummy string dataset

text.string<- "(((((((cow,pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fis
h), shark);" 
vert.tree<-read.tree(text=text.string)

#Plot the phylogenetic-Rooted Plot

#Regenerate same plot using color "Red", and add title at the top stating "Rooted Phylogenetic Tree".

plot(vert.tree,no.margin=TRUE,edge.width=2, edge.color = "Red", main = "Rooted Phylogenetic Tree")
