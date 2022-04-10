# load dataset
dataset <- read.csv("BranchEvaluation.csv",sep=";")
# show table
View(dataset)

# show data type
str(dataset)

# create coloumn branch become row names
datasetnew <- dataset[,-1]
rownames(datasetnew) <- dataset[,1]
View(datasetnew)

# show eigen value score of PCA
library(factoextra)
library(FactoMineR)

res.pca <- PCA(datasetnew,  graph = FALSE)
res.pca$eig

# show scree plot of PCA
fviz_screeplot(res.pca, addlabels = TRUE)

# show pricipal component score
res.pca$ind$coord

# show graph of two dimensional variable
fviz_pca_ind(res.pca, col.ind = "cos2", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE) 

# show graph of biplot analysis
fviz_pca_biplot(res.pca, repel = TRUE)