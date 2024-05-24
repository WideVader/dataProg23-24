library(tidyverse)
dir(recursive = T, pattern = "Sports")->filename
filename %>% 
  readxl::excel_sheets() %>% 
  sapply(\(x){readxl::read_excel(filename,sheet=x) }) -> L
L$Players

c(1,4,10,2,20) %>% lead()
c(1,4,10,2,20) %>% {c(.[-1],NA)}
c(1,4,10,2,20) %>% lag()
c(1,4,10,2,20) %>% diff()

dFa<-data.frame(Day=1:50,Infected=round(1.2^(1:50)))
dFa

dFa %>% mutate(New=Infected-lag(Infected))
dFa %>% mutate(New=c(NA,diff(Infected)))
dFa %>% arrange(desc(Day)) %>% mutate(New=c(diff(Infected)*-1,NA))
dFa %>% arrange(desc(Day)) %>% mutate(New=-c(diff(Infected),NA))




