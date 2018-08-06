##Task1
dat = read.csv('Desktop/mtsw_data.csv')
dat
x<-ifelse(dat$Ozone>25&dat$Temp>70,dat$Wind,NA)
mean(x,na.rm=TRUE)

##Task2
dat = read.csv('Desktop/mtsw_data.csv')
dat
y=0
for (row in 1:nrow(dat)){
  y[row]<-ifelse(dat[row,5]==9&dat[row,6]==8,dat[row,4],NA)
}
mean(y,na.rm=TRUE)

##Task3
dat = read.csv('Desktop/mtsw_data.csv')
dat
w<-0
positive<-complete.cases(dat)
w<-dat[positive,]
num<-dat[1,1]
i<-2
k<-0
while(i<=nrow(w)){
  if(num>w[i,1]&&w[i,5]==5){
    num<-w[i,1]
  }
  if(w[i,5]==6){
    if(k==0){
      k<-k+1
      num2<-dat[i,1]
    }
    else{
      if(is.na(num2)){
        num2<-w[i,1]
      }
      else if(num2>w[i,1]){
        num2<-w[i,1]
        cat("Month=5: ",num)
        cat("Month=6: ",num2)
      }
    }
  }
}
 cat("Month=5: ",num)
 cat("Month=6: ",num2)
 
 

 
 dat = read.csv('Desktop/mtsw_data.csv')
 dat
 w<-0
 positive<-complete.cases(dat)
 w<-dat[positive,]
 num<-dat[1,1]
 i<-2
 k<-0
 while(i<=nrow(w)){
   if(num>w[i,1]&&w[i,7]==7){
     num<-w[i,1]
   }
   if(w[i,7]==8){
     if(k==0){
       k<-k+1
       num2<-dat[i,1]
     }
     else{
       if(is.na(num2)){
         num2<-w[i,1]
       }
       else if(num2>w[i,1]){
         num2<-w[i,1]
       }
     }
     i<- i+1
   }
 }
 cat("Month=7: ",num)
 cat("Month=8: ",num2)
 
##Task4
 
 #1
 
 dat = read.csv('Desktop/mtsw_data.csv')
 dat
 
 rw<-1
 repeat{
 x[rw]<-ifelse(dat[rw,1]>25&dat[rw,4]>70,dat[rw,3],NA)
 if(rw==nrow(dat)){
   break;
 }
 rw<-rw+1
}
mean(x,na.rm=TRUE)
 
 #2
 
dat = read.csv('Desktop/mtsw_data.csv')
dat

rw<-1
repeat{
  x[rw]<-ifelse(dat[rw,5]==9&dat[rw,6]==8,dat[rw,4],NA)
  if(rw==nrow(dat)){
    break;
  }
  rw<-rw+1
}
mean(x,na.rm=TRUE)
 