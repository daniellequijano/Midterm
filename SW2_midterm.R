##task1

data <- read.csv('midtermseatwork_data.csv')


meanfun1 <- function(dat, min,max) {
  x<-ifelse(dat$Ozone>min & dat$Temp>max,dat$Wind,NA)
mean(x,na.rm=TRUE)
}

##TASK2
data <- read.csv('midtermseatwork_data.csv')

meanfun2 <- function(dat,Month, Day) {
  y=0
  for (row in 1:nrow(dat)){
    y[row]<-ifelse(dat[row,5]==Month&dat[row,6]==Day,dat[row,4],NA)
  }
  mean(y,na.rm=TRUE)
}

#task3

data <- read.csv('midtermseatwork_data.csv')

meanfun3 <- function(dat, Month) {
  y=0
  for (row in 1:nrow(dat)){
    y[row]<-ifelse(dat[row,5]==Month,dat[row,1],NA)
  }
  min(y,na.rm=TRUE)
}







