aggregate2 <- \(v,df,fun){
  sapply(df, \(x){
    tapply(x,v,fun)
  })
}

aggregate2(iris[,5], iris[,-5],mean)

iris %>% mean()
tapply(iris[,1], iris$Species, mean)
apply(iris[,-5], 2, \(x){
  tapply(x, iris$Species, mean)
})

sapply(iris[,-5], \(x){
  tapply(x, iris$Species, mean)
})

tapply(1:10,rep(c("a","b"),5),sum)


inputdf<-data.frame(From=c("colour","lift","centre"), To=c("color","elevator","center"),stringsAsFactors=F)
inputstring<-"In the centre. of the lift there was a banana"

inputstring %>% strsplit("[^A-Za-z0-9]") %>% unlist() %>% str_replace_all(inputdf[1,1], inputdf[1,2])

# inputstring %>% str_replace_all(inputdf[2,1], inputdf[2,2])

inputstring %>% strsplit("[^A-Za-z0-9]") %>% unlist() %>% {sapply(inputdf[,1],\(x){x==.})}

translate <- \(s,df){
  str_split(s,)
}
