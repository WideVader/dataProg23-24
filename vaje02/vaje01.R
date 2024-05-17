m2<-matrix(9:1,3)
m1<-matrix(9:1,3,,T)
m3<-matrix(1:4,2,6)
m1;m2;m3;
m2[1:2,2:3]<-0
m2[-3,-1]
m2[c(T,T,F),c(F,T,T)]
m2
m1[1,,drop=F]
m1[-1,]<-5
m1
m4<-matrix(c("a","b","c","d"),2,2,byrow = T)
matrix(letters[1:4],2,2,byrow = T)
m4;m3;cbind(m4,m3)
#2a