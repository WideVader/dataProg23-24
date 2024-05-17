library("lubridate")
Sys.time() %>% class() # posixt aka datetime
Sys.Date() %>% class() #date
"2024-03-29" %>% class() # character
today() %>% month(label = T, abbr = F, locale = "Slovenian")
today() %>% lubridate::wday(label = T)
v1 <- c("13.1.2021","3.Jan.2011","4 March 14")
v1 %>% lubridate::dmy()
"1.Feb.2020" %>% dmy() %>% {today()-.}
"1.Feb.2020" %>% dmy() %>% difftime(today(),.,units="weeks")
"1.1.2024" %>% dmy() %>% {.+years(1)-.}

"25.12.2010" %>% dmy() %>% {.+years(0:9)} %>% lubridate::wday(label = T, abbr = F)

"25.12.2010" %>% dmy() %>% {.+years(0:9)} %>% .[wday(.,label = T, abbr = F)>="Monday"]

"25.12.2010" %>% dmy() %>% {.+years(0:9)} %>% .[wday(.,label = T, abbr = F)>="Monday" &
                                                  wday(.,label = T, abbr = F)<="Friday"]

"25.12.2010" %>% dmy() %>% {.+years(0:9)} %>% .[wday(.)>=2 &
                                                  wday(.)<=6] %>% year()

"3.1.2021" %>% dmy() %>% {.+years(0:100)} %>% {.[wday(.)==1]<-.[wday(.)==1]+days(1);.} %>% {.[wday(.)==7]<-.[wday(.)==7]+days(2);.}

