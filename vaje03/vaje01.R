library(tidyverse)
library(writexl)
dir(recursive = T)
"dataProg23-24/dn1/time_series_covid19_confirmed_global.csv" %>% read.csv()->df1
df1 %>% .[1:5,1:5]
df1 %>% .[,ncol(.)] %>% sum() #kumulativno
df1 %>% .[,ncol(.)-0:1] %>% {sum(.[,1])-sum(.[,2])} #samo novi zadnji dan
df1 %>% .[,c(2,ncol(.))] %>% write.csv(gzfile("dataProg23-24/dn1/time_series_covid19_confirmed_global.csv"))
dir(recursive = T)
"dataProg23-24/vaje03/SI.zip" %>% unzip(list = T)
"dataProg23-24/vaje03/SI.zip" %>% unzip(exdir = "dataProg23-24/vaje03")
"datProg23-24/vaje03/SI.txt" %>% read.table(sep = "\t") %>% .[,-4:-9]->zip
zip %>% head()
c("Peter", "Janko", "Metka", "Medo") -> imena
grep("e", imena)
grepl("e", imena)
imena[grep("e",imena)]
stringr::str_detect(imena,"e")
zip$V3 %>% .[grep("z",.)]
zip %>% .[grep("z",.$V3),2:3]

zip %>% .[grep("h|H",.$V3),2:3]
zip %>% .[grep("[hH]",.$V3),2:3]
zip %>% .[grep("r$",.$V3),2:3]
zip %>% .[.$V2>=6000 & .$V2<7000,2:3] %>% {colnames(.)<-c("zip","kraj");.} %>% write.table("dataProg23-24/vaje03/Obala.tsv",
                                                                                           sep="\t", row.names = F)

dir(recursive = T, pattern = "\\.xlsx?$")
"dataProg23-24/vaje03/Sample - Superstore.xls" %>% readxl::read_excel() -> store
store %>% .[,1:7]
store %>% .[seq(100,nrow(.),100),1:7] %>% writexl::write_xlsx("dataProg23-24/vaje03/Trgovina.xlsx")
"dataProg23-24/vaje03/Sample - Superstore.xls" %>% readxl::read_excel(sheet = "People")
store$`Customer Name` %>% unique() #altgr+7 = ``
store$`Customer Name` %>% unique() %>% .[grep(" [^ ]+ ",.)]



