#  if(F){"banana"} else 3
fakulteta<-\(n){
  if(n<=0){1} else{n*fakulteta(n-1)}  
}

fakulteta(4)
fakulteta2<-\(n){prod(1:n)}
fakulteta2(5)


je.naravno <- \(x){
  
  if(is.numeric(x))
  {
    
    x>0 & (x %% 1 == 0)
    
  } else {
    F
  }
}
c(4,1,0,-2,3.4) %>% je.naravno()

"aa" %>% je.naravno()
is.numeric("as")
1:4 %>% class()
is.numeric(1:1)

1:5 %>% sapply(fakulteta2)
