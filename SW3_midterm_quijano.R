#task1
#What is the value of Wind in the 112th row? Temp in the 42th row? Solar.R in the 82th row?

data <- read.csv('mtsw_data.csv')

fun1<- function(dat, row, col){
  dat[row,col]
}
  


#task2
#How many total missing values are in the columns of this data frame? For Ozone? For Solar.R? For Wind? For Temp

data <- read.csv('mtsw_data.csv')




fun2 <- function(data, v){
    if(v=='Ozone'||v=='Temp'||v=='Solar.R'||v=='Wind'){
      z <- data[ ,v]
      x <- sum(is.na(z))
      x
    }
  else{
    print("NO answer")
  }
}


#task3
#11.1 What is the mean for the 20th row - 70th row in Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.

fun3 <- function(data, x, y, v){
  if(v=='Ozone'||v=='Temp'||v=='Solar.R'||v=='Wind'){
    row_name <- data[x:y, v]
    mean(row_name, na.rm= TRUE)
  
  }
  else{
    print("NO answer")
  }
}
fun1(data, 82, "Wind")
fun2(data, "Ozone")
fun3(data, 20, 70, 'Wind')

