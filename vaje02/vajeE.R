iris %>% head()
iris %>% .[1:6,]
iris %>% str()
iris$Species %>% levels()
iris[iris$Species=="setosa" & iris$Petal.Length<1.5,-1]
iris %>% .[.$Species=="setosa" & iris$Petal.Length<1.5,-1]
iris %>% .[.$Species=="setosa",] %>% .[.$Petal.Length<1.5,-1]


a=3
#iris$Species = "setosa" ne delat tega
rm(iris)


airquality %>% head()
airquality %>% .[.$Temp >=50 & .$Temp <=60,]
airquality %>% .[.$Wind>15 ,c("Wind", "Day", "Month")]
airquality %>% .[.$Wind>15/1.6 ,c("Wind", "Day", "Month")]
?iris
paste(LETTERS,letters, sep = "")
paste(letters, collapse = "")

#stringr::str_c()

paste(sample(LETTERS[-c(1,5,9,15,21)], 50, replace = T),
      sample(letters[c(1,5,9,15,21)], 50, replace = T),
      sample(letters[-c(1,5,9,15,21)], 50, replace = T),
      sample(letters[c(1,5,9,15,21)], 50, replace = T),
      sample(letters[-c(1,5,9,15,21)], 50, replace = T),
      sep = "")
letters[c(1,5,9,15,21)]
letters[-c(1,5,9,15,21)]
1:26 %>% {names(.)<-letters;.} %>% .[c("a","e","i","o","u")]
# is element on the left side in the vector on the right
1:4 %in% 3:6
c(F,T) & c(T,T)
1:4 %>% {.+1} %>% sum()


getwd()
dir()

dir(recursive = T)


"dataProg23-24/dn1/file_example_XLS_50.xls" %>% readxl::read_excel(skip = 2) %>% as.data.frame()
"dataProg23-24/dn1/data.csv" %>% read.csv() %>% write_excel_csv("dataProg23-24/dn1/drzave.xslx")
"dataProg23-24/dn1/data.csv" %>% read.csv() %>% writexl::write_xlsx("dataProg23-24/dn1/drzave.xslx")

#https://data.humdata.org/dataset/novel-coronavirus-2019-ncov-cases/resource/00fa0e37-961b-4767-a5ce-e7ab4e2c921c %>% read.csv()



"dataProg23-24/dn1/time_series_covid19_confirmed_global.csv" %>% read.csv()-> df1
view(df1)
df1 %>% dim() %>% .[2]
df1 %>% .[.$Country.Region == "Slovenia",c(1:4,ncol(.)-6:0)]
df1 %>% .[.$Country.Region == "Slovenia"] %>% write.csv("dataProg23-24/dn1/SI")

