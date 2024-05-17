rep("a",3)
#c(,,,)
rep(c("A","B"),4)
rep(c("A","B"),c(2,4))
sample(factor(rep(c("Kava","Caj","Pivo","Sok"),5)))->f1
sample(0:6,7, replace = F)
sample(0:6)
c("b","d","a","c")->v
v[order(v)]
f1[order(f1)]

#pipa |> ali %>%
sum(1:4)
library(tidyverse)
1:4 %>% sum()
1:12 %>% matrix(3,4)
matrix(1:12,3,4)
# "." represents a wild card, so the value from left side of %>% is placed in that spot
1:12 %>% matrix(.,3,4)
3 %>% matrix(1:12,.,4)
4 %>% matrix(1:12,3,.)
4 %>% matrix(1:12,12/.,.)
4 %>% matrix(1:12,12/.,4) # ustavimo prizeto nastavitev da gre argument na prvo mesto
4 %>% letters[.]
letters %>% .[1:4]
sample(letters) %>% .[order(.)]
