myurl <-"https://d384u2mq2suvbq.cloudfront.net/public/spree/products/1597/jumbo/Japanese-Cherry-Blossom-Fragrance-Oil.jpg?1529607178"
download.file(myurl,z,mode="wb")
pic <- readJPEG(z, native = TRUE)
plot(0:1,0:1,type="n",ann=FALSE,axes=FALSE)
rasterImage(pic,0,0,1,1)

#get size
h<-dim(pic)[1]
w<-dim(pic)[2]

#open new file for output
png("out.png", width=w, height=h)
par(mar=c(0,0,0,0), xpd=NA, mgp=c(0,0,0), oma=c(0,0,0,0), ann=F)
plot.new()
plot.window(0:1, 0:1)

#fill plot with image
usr<-par("usr")    
rasterImage(pic, usr[1], usr[3], usr[2], usr[4])

#add text
text(.5,.5, "hello", cex=5, col=rgb(.2,.2,.2,.7))

#close image
dev.off()
------------
install.packages("jpeg")  ## if necessary

library(jpeg)
## get help
library(help = jpeg)
## get more help
?readJPEG