##IF

x <- 5
if(x > 0){
  print("Positive number")
}

##IF-ELSE

x <- -5
if(x > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}

a<- 5
b<- 6

if(a > b){
  print ("win")
} else {print("lose")
}


##FOR LOOPS




for (year in c(2010,2011,2012,2013,2014,2015)){
  print(paste("The year is", year))
  
  
for (year in 2010:2019){
  print(year)}
}
}


##while loops

i <- 1
while (i < 6) {
  print(i)
  i = i+1
}

##Break

x <- 1:5
for (val in x) {
  if (val == 3){
    break
  }
  print(val)
}

##Next

x <- 1:5
for (val in x) {
  if (val == 3){
    next
  }
  print(val)
}


##Repeat

x <- 1
repeat {
  print(x)
  x = x+1
  if (x == 6){
    break
  }
}


