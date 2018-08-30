library(magick)
source("http://bioconductor.org/biocLite.R")
biocLite("EBImage")
library("EBImage")
library(EBImage)

##getting image from local files
setwd("C:/Users/RM A-225/Desktop/augmented-images")
img <- readImage("byakuya.jpg")
resize1 <- function(img, x1, x2){
  y <- resize(img, w =x1, h=x2)
  display(y)
  dim(y)
  plot(y)
}

grayscale1 <- function(img, x1){
  if(x1== TRUE){
  colorMode(img) = Grayscale
  display(img, all=TRUE)
  }
  else if(x1 == FALSE){
    colorMode(img) = Color
    display(img, all=TRUE)
  }
  else{
    print("Input should only be TRUE or FALSE")
  }
}
grayscale1(img, TRUE)

invert1 <- function(img, x1){
  Imagetr <- translate(rotate(img, x1), c(50, 0))
  display(Imagetr)
}
invert1(img, 90)

##getting image from web
img2 <- image_read('https://vignette.wikia.nocookie.net/poohadventures/images/f/f9/2972860-ishida-uryu-ishida-30477510-619-800.jpg/revision/latest?cb=20150307214912')
img2

resize2 <- function(img2, x1){
  a <- image_resize(img2, x1)
  a
}
resize2(img2, 500)

grayscale2 <- function(img2, x1){
  if(x1== TRUE){
    image_convert(img2,type = 'Grayscale')
  }
  else if(x1 == FALSE){
   img2
  }
  else{
    print("Input should only be TRUE or FALSE")
  }
}
grayscale2(img2, 2)

invert2 <- function(img2, x1){
  image_rotate(img2, x1)
}
invert2(img2, 90)