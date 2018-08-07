add5numbers <- function(n1,n2,n3,n4,n5){
  sum_nums = n1 + n2 +n3 +n4 + n5
  sum_nums
} 


subset_data <- function(var,min_var=20,max_var=50){
  param <- (var>min_var)&(var<max_var)
  var[param]
}


data <- read.csv('midtermseatwork_data.csv')
meanfun <- function(dataset_csv, removeNA = TRUE){
  col_num <- ncol(dataset_csv)
  means_per_col <- numeric(col_num)
  for(elements in 1:col_num){
    means_per_col[elements] <- mean(dataset_csv[,elements],na.rm=removeNA)
  }
  means_per_col
}

