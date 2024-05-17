dB1<-"April 5th 22"
dB2<-"30.1.2020"
dB3<-"2/14/00"
dB4<-"2010-6-19"
dB5<-"4. Jan 1999"
dB1 %>% mdy() %>% format("%d.%m.%Y")
  #format("%d %m %Y %y %h %H %v")
dB2 %>% dmy() %>% format("%m/%d/%Y")
dB3 %>% mdy() %>% format("%Y-%m-%d")
dB4 %>% ymd() %>% format("%d. %h %Y")



library(tidyverse)
library(lubridate)
dir(recursive = T,pattern = "store") %>% readxl::read_excel()->store
store %>% {.$`Ship Date` - .$`Order Date`}
store %>% {as.Date(.$`Ship Date`) - as.Date(.$`Order Date`)}
store %>% {difftime(.$`Ship Date`, .$`Order Date`, units = "days")} ->store$`Order Delay`
store %>% .[,ncol(.)]