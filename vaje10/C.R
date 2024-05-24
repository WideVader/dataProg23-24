#For each team, return the birth year of the oldest player in it.

L$Players %>% 
  inner_join(L$Teams, by="TeamID") %>% 
  select(contains("name"),BirthDate) -> C1

C1 %>% 
  {.$BirthDate <- mdy(.$BirthDate) %>%  year();.} %>% 
  group_by(Nickname) %>% 
  summarise(NajSt=min(BirthDate))

C1 %>% 
  {.$BirthDate <- mdy(.$BirthDate) %>%  year();.} %>% 
  group_by(Nickname) %>% 
  filter(BirthDate==min(BirthDate))

C1 %>% 
  {.$BirthDate <- mdy(.$BirthDate);.} %>% 
  group_by(Nickname) %>% 
  top_n(1,desc(BirthDate))%>% 
  arrange(Nickname)


L$Players %>% 
  select(ID=PlayerID,Address) %>% 
  separate(2,c("St","b"), sep=" ", extra="merge") %>% 
  separate(3,c("a","b","c","d"), sep=" ", fill="left") %>% 
  unite("Ostalo",a:c,sep=" ", na.rm=T)

#purrr:map
L %>% lapply(head,2)
L %>% map(head,2)
L %>% map(\(x){head(x,2)})

#map_if

L$Games %>% 
  summarise_if(is.numeric,mean)

L$Games %>% 
  map_if(is.numeric,mean) %>% 
  map_if(is.timepoint,\(x){max(x)-min(x)}) %>% 
  unlist()
















