l1<-list(1,"a",T)
l2<-list(2,3,2,"banana",1:10)
l1[[2]]<-"A"
l1[2:3] # za dobiti podseznam
l3<-c(l2,l1)

l3.2<-list(l2,l1)
l3.3<-l2;l3[[6]]<-l1

l2[[5]][4]

l4<-c("beer",4.3,l1,"KOPER",l2)
l4[[3]]<--2
#l4[[5]]<--2

l5<-list(4,5.3,1.4,0,-3,3,3)

unlist(l5)
sum(unlist(l5))