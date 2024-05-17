library(tidyverse)
dir(recursive = T, pattern = "Sport")->filename
filename %>% readxl::excel_sheets() %>% sapply(\(x){readxl::read_excel(filename,sheet=x)})->L
L$Players$FirstName

merge(L$Teams,L$Players,by="TeamID")

L$Players %>% inner_join(L$Teams,by="TeamID") %>% select(Nickname) %>% group_by(Nickname) %>% summarise(st.igralcev=n()) # ali pa %>% count()
L$Players %>% inner_join(L$Teams,by="TeamID") %>% select(contains("stName"),Colors) %>% filter(grepl("[Bb]lue",Colors))
