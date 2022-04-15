# load dataset
dataset=read.csv("TV Program.csv",sep=";")
# show table
View(dataset)

# show data type
str(dataset)

# correlation matrix test
library(psych)

KMO(dataset)
KMO(dataset[,-2])
KMO(dataset[,c(-2,-10)])

datasetnew=dataset[,c(-2,-10)]

# show eigen value score of PCA
library(factoextra)
library(FactoMineR)

selectfactor <- PCA(datasetnew,  graph = FALSE)
selectfactor$eig

# show factor analysis score
resultfactor <- factanal(datasetnew,  factors = 2,rotation="varimax")
resultfactor$loadings

