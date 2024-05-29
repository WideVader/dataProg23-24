library(janeaustenr)

knjige<-austen_books()
knjige

unique(knjige$book)
knjige |>
  dplyr::select(book) |>
  distinct()
knjige |>
  dplyr::select(book) |>
  distinct() |>
  unlist()
knjige |>
  dplyr::select(book) |>
  distinct() |>
  as.vector()

str_extract_all(knjige$text,"\\d+") |>
  list_c() |>
  as.numeric() |>
  sum()
str_count(knjige$text,"Jane") |>
  sum()

knjige<-knjige |>
  mutate(text=tolower(text))
str_count(knjige$text,"darcy") |>
  sum()

library(tidytext)
str_split(knjige$text,pattern="[ ]")[1:10] %>% 
  list_c()

besede<-str_split(knjige$text,pattern="\\W")%>% 
  list_c()



besede[nchar(besede)>0]

besede[nchar(besede)>0][1:100] %>% 
  tolower()

besede[nchar(besede)>0] %>% 
  tolower() %>% 
  as.data.frame() -> df

colnames(df)<-"beseda"

length(besede[nchar(besede)>0])

df %>% 
  count(beseda, sort=T) %>% 
  head(20)

df %>% 
  dplyr::filter(nchar(beseda)>3) %>% 
  count(beseda,sort=T) %>% 
  head(20)

unique(knjige$book)









