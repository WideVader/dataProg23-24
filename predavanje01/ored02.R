#divide<-function(x,y) {
#  if (y!=0){
#    print(x/y)
#  } else {print("Cannot divide by zero!")}
#}

divide(4,2)
divide(4,0)

divide<-function(x,y){
tryCatch(
    if(y!=0)print(x/y)else napaka, error = function(e) paste0("Cannot divide by zero!")
  )
}

try("2"/3, silent = T)
