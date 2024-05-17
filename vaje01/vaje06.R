m1<-matrix(1:9,nrow = 3,ncol = 3,byrow = TRUE)
matrix(1,4,3)

m2<-matrix(9:1,3,3,F)
m2<-matrix(9:1,3,byrow = F)

m3<-matrix(1:4,2,6,byrow = T)
m3<-matrix(1:4,2,6,byrow = T)
m3

?matrix
m1+m2
m3<-m3-10
m1<-m1*3

cbind(m1,m2)
rbind(cbind(m1,m2),m3)
m1^2

m1 %*% m1 # mnozenje matrik
dim(m3)[2]
nrow(m3)
ncol(m3)
m1
m1[2,1]<--1
m2
m2[,2]
m2[,2,drop=F]