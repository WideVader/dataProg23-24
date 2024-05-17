library(tidyverse)
airquality %>% head()
c(1,2,NA) %>% sum(na.rm=T)
#1==NA
is.na(1)
is.na(NA)
airquality %>% drop_na() # izbrise vrstice za vsaj enim NA
airquality %>% .[is.na(.$Ozone), ncol(.)-0:3]
airquality %>% filter(!is.na(Ozone)) %>% select(ncol(.)-0:3,Ozone)
airquality %>% group_by(Month) %>% filter(min(Temp)==Temp) %>% ungroup()
airquality %>% .[sample(1:nrow(.),floor(nrow(.)/15)),]
airquality %>% .[sample(rep(c(T,F),c(floor(nrow(.)/15), nrow(.)-floor(nrow(.)/15)))),]
airquality %>% sample_frac(1/15) %>% select(grep("o",colnames(.)))
airquality %>% slice_sample(prop=1/15) %>% select(matches("o"))

airquality %>% {.$Celsius<-(.$Temp-32)*(5/9);.} %>% {c(max=max(.$Celsius),min=min(.$Celsius),mean=mean(.$Celsius))}
airquality %>% mutate(Celsius=(Temp-32)*(5/9)) %>% summarise(max=max(Celsius),min=min(Celsius),mean=mean(Celsius))
airquality %>% drop_na() %>% summarise(min(Solar.R), max(Solar.R))
airquality %>% summarise(min(Solar.R, na.rm = T), max(Solar.R, na.rm = T))

airquality %>% filter(min(Solar.R, na.rm = T)==Solar.R | max(Solar.R, na.rm = T)==Solar.R)
