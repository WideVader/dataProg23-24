minMS<-\(m){apply(m,2,min)}

matrix(1:9,3,3) %>% minMS


#apply za matrike
#sapply>lapply za vektorje
#tapply za agregacijo
#mapply za multple parametre

minolovec<-\(nrow,ncol,nmines=floor(ncol*nrow/5)){
  c(rep(T,nmines),rep(F,nrow*ncol-nmines)) %>% sample() %>% matrix(nrow,ncol) %>% tryCatch(error = \(x){message("Podatki so nesmisleni");"NaN"})
}
minolovec(3,4)
minolovec("hello",4)

tryCatch({"a"+1}, error = \(x){"banana"})
tryCatch({1+1}, error = \(x){"banana"})
print("sporocilo")
warning("sporocilo")
message("message")
