tryCatch(
    expr={
      sqrt(a)
      },
    error=function(e){
    paste0("you cant sqrt that ", e)}
)

tryCatch(sqrt("a"), error=function(e) print("You can't take the square root of a character!"))

sapply(c(4, 9, "Covid19"), function(x) tryCatch(sqrt(x), error=function(e) NA))

sapply(c(4, 9, "Covid19"), function(x) tryCatch(sqrt(as.numeric(x)), error=function(e) NA))


for (x in c(4, 9, "Covid19",16)){
  
  tryCatch(print(sqrt(as.numeric(x))), error=function(e) NA)
}
