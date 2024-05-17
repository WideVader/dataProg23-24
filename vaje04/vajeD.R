"Zive naj vsi narodi
ki hrepene docakat dan,
da koder sonce hodi,
prepir iz sveta bo pregnan,
da koder sonce hodi,
prepir iz sveta bo pregnan,
da rojak
prost bo vsak,
ne vrag, le sosed bo mejak." -> himna

himna %>% cat()
himna %>% strsplit(" |\n") %>% unlist() %>% length()
himna %>% strsplit("") %>% unlist() %>% length()
himna %>% nchar()
# ne presteje \n
himna %>% str_count(".")

dir(recursive = T, pattern = "word") %>% read.csv()->word
# grep, str_detect, str_extract
word %>% .[grep("age",.[,1]),]
word$X2 %>% str_view("age")# %>% typeof()

word$X2 %>% strsplit("") %>% unlist() %>% tolower() %>% factor() %>% summary() %>% .[order(-.)]

"a|A" %>% str_count(word$X2,.) %>% sum()

# \(x)  \ <- function
paste(letters,LETTERS,sep = "|") %>% sapply(.,\(x){
  x %>% str_count(word$X2,.) %>% sum()
})


store$`Customer Name` %>% strsplit(" ") %>% sapply(\(x){
  paste(str_sub(x[1],1,1),".",
  str_sub(x[length(x)],1,1),".",sep = "")
})->store$C.N.

str_sub("abcd",2,3)
str_sub("abcd",1,1)
