USArrests %>% nrow()
USArrests %>% summarise(n())

USArrests %>% .[order(-.$Murder),] %>% head(3)

USArrests %>% slice_max(Murder,n=3)

USArrests %>% arrange(desc(Assault)) %>% head(3)
USArrests %>% top_n(3,Rape)
USArrests %>% mutate(Skupno=Murder+Assault+Rape) %>% arrange(desc(Skupno))
