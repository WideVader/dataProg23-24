v1<-1:26
names(v1)<-letters
v1[c("a","e","i","o","u")]
names(v1[c(1,5,9,15,21)])
#v1[c(T,...)]
v1>20
v1[v1>20]

l1<-list(m1,df1,v1,5)
l1<-list(matrika=m1,dataframe=df1,vektor=v1,stevilka=5)

names(l1)<-c("matrix","dataframe","vector","number")

l1[[1]]
#l1$dataframe[,2]
l1$dataframe$Priimek
l1$stevilka<-6
l1
l1[4:1]->l1
l1[4:1][[1]]
l1$vektor<-c(l1$vektor[1:19],sh=19.5,l1$vektor[-1:-19])
l1$dataframe[1:2,]
head(l1$dataframe,2)
library(tidyverse)
l1$dataframe %>% head(2)
l1$dataframe %>% head(.,2)
2 %>% head(l1$dataframe,.)

df1 %>% as.list()
df1 %>% as.list() %>% as.data.frame()
factor(c("Moski","Zenska","Moski","Moski")) -> df1$spol


