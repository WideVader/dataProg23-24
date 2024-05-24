

# problem 3

p3<-"P0001 Julie Zion 6754 Lakeview Dr. Coral Springs
P0002 Britta Zarinsky 4532 Maplewood Dr. Coral Springs
P0003 Jenna Moldof 100 Oak Lane Coral Springs
P0004 Melissa Kimble 1101 Ramblewood Rd. Coral Springs
P0005 Jessica Anderson 1345 University Dr. Coral Springs
P0006 Leslie Ericson 8922 Coral Ridge Dr. Coral Springs
P0007 Jessica Goodman 3800 Westview Dr. Coral Springs
P0008 Marci Barber 4545 Westview Dr. Coral Springs
P0009 Nancy Dorman 900 Ramblewood Rd Coral Springs
P0010 Julie Fraser 4566 Parkside Dr. Coral Springs
P0011 Kelly James 800 Coral Springs Dr. Coral Springs
P0012 Sherrie Green 6600 Main Street Coral Springs
P0013 Priscilla Pearson 2450 Maplewood Dr. Coral Springs
P0014 Kerri Stone 550 Sample Road Coral Springs
P0015 Toni Moldof 522 Coral Springs Dr. Coral Springs
P0016 Shelly Parker 1001 Coral Ridge Dr. Coral Springs
P0017 Amy Kinzer 922 Sample Road Coral Springs
P0018 Mary Citron 500 Oak Lane Coral Springs
P0019 Jessica Grauer 1881 Vestal Road Coral Springs
P0020 Sonja Freed 2210 Main Street Coral Springs
P0021 Lori Pryor 2001 Parkside Dr. Coral Springs
P0022 Lauren Howard 1520 University Dr. Coral Springs
P0023 Katie Remmen 2200 Cedarwood Dr. Coral Springs
P0024 Katherine Akong 1705 Ramblewood Dr. Coral Springs
P0025 Lilly Taboas 1025 Coral Springs Dr. Coral Springs"


p3 %>% 
  strsplit("\n") %>% 
  unlist() %>% 
  data.frame(A=.) %>% 
  separate(A,c("Id","Ime","Priimek","Naslov"), sep = " ", extra = "merge")

# problem 1


p1<-data.frame(Event=c("World cup","Ozivela ulica","Euro Math Congress","Summer school Rogla",
                       "Final exams","HL3 release date"),Year=c(2022,2021,2004,2022,1999,2077),
               Day=c(11,2,30,14,5,6),
               Month=c(12,3,4,7,10,10),
               stringsAsFactors=F)


p1 %>% 
  mutate(Datum=dmy(paste(Day,Month,Year))) %>% 
  arrange(Datum)


# problem 4
p4<-list(mtcars,iris,airquality)

mtcars %>% summarise_if(is.numeric,max)

p4 %>% 
  map(\(x){summarise_if(x,is.numeric,max,na.rm=T)}) %>% 
  unlist()



