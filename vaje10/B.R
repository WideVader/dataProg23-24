L$Coaches %>% mutate(Name=paste(FirstName,LastName)) %>% select(Name)
L$Coaches %>% unite("Name",2:3, sep=" ")

#In L$Teams seperate() the colors and return a column with unique colors and second 
#column with the number of times it appears as a primary color and a third column with
#the number of times as secondary. Use pivot_longer or gather.

L$Teams %>% 
  separate(Colors,c("Primarna","Sekundarna")) %>% 
  pivot_longer(3:4) %>% 
  group_by(Barva=value) %>% 
  summarise(St=n(),StPrim=sum(name=="Primarna"),StSek=sum(name=="Sekundarna"))

#separate separator pogledaj
