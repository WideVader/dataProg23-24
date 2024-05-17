C1.1 %>% 
  rename(Gosti=Domaci,Domaci=Gosti) %>% 
  rbind(C1.1) %>% 
  spread(Gosti,DatePlayed) %>% 
  view()

custom.fun<-\(x,y){
  case_when(
    x>y~3,x==y~1,T~0
  )
}
custom.fun(1:5,5:1)
