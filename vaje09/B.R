L$Players %>% inner_join(L$Teams,by="TeamID") %>% select(contains("stName"),Colors) %>% filter(grepl("[Bb]lue",Colors))
# Do a double inner join, L$Teams inner_join L$Games inner_join L$Teams, the first time across HomeTeamID and the second time VisitTeamID.
# 
# Which teams played on 2005-09-12?
#   Use pivot_longer() or gather() and return a column with “home” or “visit” values and a column with the names of the teams.


merge(L$Teams,L$Games,by.x="TeamID",by.y = "HomeTeamID") %>% merge(.,L$Teams,by.x="VisitTeamID",by.y="TeamID")


L$Teams %>%
  inner_join(L$Games,by=c("TeamID"="HomeTeamID")) %>%
  inner_join(L$Teams,by=c("VisitTeamID"="TeamID")) %>%
  select(Domaci=Nickname.x,Gosti=Nickname.y,DatePlayed) %>% 
  filter(as.character(DatePlayed)=="2005-09-12") -> B1

B1 %>% pivot_longer(1:2, names_to = "Ime", values_to = "Ekipa")

B1 %>% gather("Ime","Ekipa",1:2)


L$Teams %>%
  inner_join(L$Games,by=c("TeamID"="HomeTeamID")) %>%
  inner_join(L$Teams,by=c("VisitTeamID"="TeamID")) %>%
  select(Domaci=Nickname.x,Gosti=Nickname.y,DatePlayed) %>% 
  pivot_wider(names_from = Gosti, values_from = DatePlayed) -> C1

C1 %>% arrange(Domaci) %>% rename(AAA=Domaci) %>% .[,order(colnames(.))]
C1 %>% arrange(Domaci) %>% as.data.frame() %>% {rownames(.)<-.$Domaci;.[,-1]} %>% .[,order(colnames(.))] %>% rownames_to_column()
C1 %>% arrange(Domaci) %>% .[,c(1,order(colnames(.)[-1])+1)] %>% view()


L$Teams %>%
  inner_join(L$Games,by=c("TeamID"="HomeTeamID")) %>%
  inner_join(L$Teams,by=c("VisitTeamID"="TeamID")) %>%
  select(Domaci=Nickname.x,Gosti=Nickname.y,DatePlayed) %>% 
  spread(Gosti,DatePlayed)


L$Teams %>%
  inner_join(L$Games,by=c("TeamID"="HomeTeamID")) %>%
  inner_join(L$Teams,by=c("VisitTeamID"="TeamID")) %>%
  select(Domaci=Nickname.x,Gosti=Nickname.y,DatePlayed) -> C1.1












