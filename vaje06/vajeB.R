montecarlo<-\(n){
  seq(-pi,pi,0.1) %>% {plot(cos(.),sin(.), type = "l", xlab="X-os", ylab = "Y-os", main="Naslov", col="blue")}
  points(c(1,1,-1,-1,1),c(1,-1,-1,1,1), type = "l", col="red")
  x<-runif(n,-1,1)
  y<-runif(n,-1,1)
  points(x,y, col=ifelse(x^2+y^2<=1,"darkgreen","purple"))
  4*sum(x^2+y^2<=1)/n
}
library(tidyverse)

montecarlo(1000)

incircle<-(function(x,y) sqrt(x^2+y^2)<=1)

n<-1000
x<-(1:n-1)^((sqrt(5)-1)/2)*cos((1:n-1)*2*pi*(sqrt(5)-1)/2)
y<-(1:n-1)^((sqrt(5)-1)/2)*sin((1:n-1)*2*pi*(sqrt(5)-1)/2)
data.frame(X=x,Y=y) %>% ggplot()+aes(x=X,y=Y,colour=1:1000, size = sqrt(x^2+y^2))+
  geom_point()+
  scale_color_gradient(low="#3dad46", high="brown") + 
  scale_size_continuous(range=c(1,3))

iris %>% ggplot()+aes(y=Petal.Length)+geom_histogram()
iris %>% filter(Species=="virginica") %>%ggplot()+aes(y=Petal.Length, group=Species, fill=Species)+geom_bar()
# .[.$Species=="virginica",]




packageVersion("rlang") # ‘1.0.6’
devtools::install_github("r-lib/rlang")
packageVersion("rlang")
