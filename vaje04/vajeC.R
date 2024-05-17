library(tidyverse)
library(lubridate)

"2009-1-14 18:30:00" %>% ymd_hms() %>% as.Date()
"2009-1-14 18:30:00" %>% stringr::str_extract("^[^ ]+")
"2009-1-14 18:30:00" %>% stringr::str_remove(" .+") %>% ymd()
"2009-1-14 18:30:00" %>% stringr::str_split(.," ") %>% .[[1]] %>% .[1]

"24.10.1999" %>% dmy() %>% {c(day(.),month(.),year(.))}
"24.10.1999" %>% strsplit("\\.") %>% .[[1]] #unlist

"9:15:00 5 Jan 2020" %>% stringr::str_remove("^[^ ]* ") %>% dmy() %>% as.Date()
"9:15:00 5 Jan 2020" %>% strsplit(" ") %>% .[[1]] %>% {c(.[-1],.[1])} %>% paste(collapse=" ") %>% dmy_hms() %>% as.Date() 
"1/1/2017 9:15" %>% dmy_hm(.)