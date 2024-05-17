mtcars %>% as_tibble %>% {.$Tip<-rownames(.);rownames(.)<-NULL;.}
mtcars %>% rownames_to_column() %>% rename(Tip=rowname) ->df

df %>% head()
#grepl returns logical values
df %>% filter(grepl("Merc",Tip)) %>% summarise(mean(hp))
df %>% mutate(Znamka=str_remove(Tip," .*")) %>% group_by(Znamka) %>% summarise(Avg=mean(hp)) %>%
  ggplot()+aes(y=Znamka, weight=Avg)+geom_bar()

df %>% head()
df$cyl %>% factor() %>% summary()
df %>% group_by(cyl) %>% summarise(n())
df %>% group_by(cyl) %>% summarise(length(am))

df %>% sapply(class)
df %>% select_if(c(F,F,F,F,F,F,F,T,F,F,F,T))
df %>% select_if(is.numeric) %>% summarise_all(c(MAX=max,MIN=min))
df %>% summarise_if(is.numeric,\(x){c(min(x),max(x))})
df %>% summarise_if(is.numeric,c(MAX=max,MIN=min))
