

library(EBImage)
library(magick)
source("http://bioconductor.org/biocLite.R")
biocLite("EBImage")
library("EBImage")

#LOCALLY
img <- readImage("sak.jpg")
dim(x)[1:2]
y <- resize(img, w =250, h=300)
display(y)
z <- imageData(y)
dim(y)

#WEB
img2 <- image_read("https://d384u2mq2suvbq.cloudfront.net/public/spree/products/1597/jumbo/Japanese-Cherry-Blossom-Fragrance-Oil.jpg?1529607178")
a <- image_resize(img2, "x250")
a
