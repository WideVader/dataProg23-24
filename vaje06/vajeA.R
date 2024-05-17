library(tidyverse)
n<-1000
x<-(1:n-1)^((sqrt(5)-1)/2)*cos((1:n-1)*2*pi*(sqrt(5)-1)/2)
y<-(1:n-1)^((sqrt(5)-1)/2)*sin((1:n-1)*2*pi*(sqrt(5)-1)/2)
plot(x,y)
lattice::xyplot(y~x) %>% ggplot() + aes(x=X, y=Y)+geom_point()
data.frame(X=x,Y=y)->df

#paketa: miniUI, esquisse

library(ggplot2)
ggplot(df) +
  aes(x = X, y= Y)+ 
  geom_point(shapiro = "circle", size = 1.5, colour = "#112446") + 
  theme_minimal()

lattice::xyplot(y~x) %>% ggplot() + aes(x=X, y=Y)+geom_point()
lattice::xyplot(y~x) %>% ggplot(aes(x=X, y=Y))+geom_point()
lattice::xyplot(y~x) %>% ggplot() + geom_point(aes(x=X, y=Y))

seq(-pi,pi,0.1) %>% plot(.,sin(.), type = "s")
plot(sin,-pi,pi)
seq(-pi,pi,0.1) %>% data.frame(X=.,Y=sin(.)) %>% ggplot()+aes(x=X,y=Y)+geom_line()

seq(-pi,pi,0.1) %>% {plot(cos(.),sin(.), type = "l", xlab="X-os", ylab = "Y-os", main="Naslov")}

points(c(1,1,-1,-1,1),c(1,-1,-1,1,1), type = "l", col="red")



?plot


seq(-pi,pi,0.1) %>% {data.frame(X=c(cos(.),c(1,1,-1,-1,1)),
                                Y=c(sin(.),c(1,-1,-1,1,1)),
                                Tip=rep(c("Krog","Kvadrat"),c(length(.),5)))} ->df2
df2 %>%  ggplot()+aes(x=X,y=Y, group=Tip,color=Tip)+geom_path()
library(tidyverse)
esquisse::esquisser()


ggplot(df2) + aes(x=X,y=Y) + geom_path() + facet_wrap(vars(Tip))

seq(-pi,pi,0.1) %>% data.frame(Alpha=.,S=sin(.),C=cos(.)) %>% ggplot()+geom_path(aes(x=Alpha,y=S))+
  geom_path(aes(x=Alpha,y=C))+
  geom_path(aes(x=C,y=S))

install.packages("ragg")

