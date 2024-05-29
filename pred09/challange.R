library(readxl)
library(janitor)

challenge <- read_xlsx("challenge.xlsx",sheet=3,skip=10)

df1<-challenge %>% 
  clean_names() %>% 
  mutate(id=row_number()) %>% 
  relocate(id,.before="sr_12") %>% 
  slice(2:213) %>% 
  rename_with(~paste0("2000_",.x),preb_tot_3:ekonv_tot_31) %>% 
  rename_with(~paste0("2010_",.x),preb_tot_32:ekonv_tot_60) %>% 
  rename_with(~paste0("2020_",.x),preb_tot_61:ekonv_tot_89) %>% 
  pivot_longer(cols="2000_preb_tot_3":"2020_ekonv_tot_89",
               names_pattern="(\\d+)_(.*)",
               names_to=c("leto","spremenljivka"),
               values_transform = as.character) %>% 
  mutate(spremenljivka=str_replace_all(spremenljivka,
                                       "_\\d+$",""),
         value=str_replace_all(value,"\\D+","NA"),
         value=as.numeric(value))


df1 %>% 
  dplyr::select(id,spremenljivka,value,leto) %>% 
  dplyr::filter(spremenljivka=="kmg_dz_1") %>% 
  pivot_wider(id_cols=c(id,leto),
              names_from = "spremenljivka") %>% 
  pivot_wider(id_cols=c(id),
              names_from = "leto",
              values_from = "kmg_dz_1")



string<-colnames(df1)
str_match_all(string,"(\\d+)_(.*)")
