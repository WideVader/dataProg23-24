library(tidyverse)

fakulteta<-\(n){if(n<=0){1}else{n*fakuleta(n-1)}}
fakulteta3<-\(n){ifelse(n<=0,1,n*fakulteta3(n-1))}
1:5 %>% fakulteta3()

{-100:100/100} %>% {plot(.,-sqrt(1-.^2),type = "l")}

{-360:360/360*pi} %>% {plot(sin(.),cos(.), type = "l")}

incircle<-\(x,y){x^2+y^2<=1}
incircle(1,1)
{0:10/10} %>% points(.,.)
{0:10/10} %>% incircle(.,.)
# seq(0,1,0.1

nrt<-\(x,n=2){x^(1/n)}
nrt(1024)
nrt(1024,5)
