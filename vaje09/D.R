#D2
L$Teams %>%
  inner_join(L$Games,by=c("TeamID"="HomeTeamID")) %>%
  inner_join(L$Teams,by=c("VisitTeamID"="TeamID")) %>%
  select(Domaci=Nickname.x,Gosti=Nickname.y,DatePlayed,contains("score")) %>% 
  rowwise() %>% 
  mutate(DomTocke=custom.fun(HomeScore,VisitScore),GosTocke=custom.fun(VisitScore,HomeScore)) %>% 
  .[,-3:-5] %>% 
  {data.frame(Ekipa=c(.$Domaci,.$Gosti),Tocke=c(.$DomTocke,.$GosTocke))} %>% 
  group_by(Ekipa) %>% summarise(Skupaj.Tocke=sum(Tocke)) %>% 
  arrange(desc(Skupaj.Tocke))

# df <- tibble(x = runif(6), y = runif(6), z = runif(6))
# # Compute the mean of x, y, z in each row
# df %>% rowwise()

L$Coaches %>% 
  inner_join(L$Games, by=c("TeamID"="HomeTeamID"),relationship = "many-to-many") %>% 
  group_by(CoachID,FirstName,LastName) %>% summarise(n())

L$Coaches %>% 
  left_join(L$Games, by=c("TeamID"="HomeTeamID"),relationship = "many-to-many") %>% 
  group_by(FirstName,LastName) %>% 
  summarise(st.tekem.doma=sum(!is.na(TeamID)))
