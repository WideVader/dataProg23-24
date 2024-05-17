install.packages("janitor")
library("janitor")

iris |> clean_names() |> dplyr::select_if(is.numeric) |> head()

airquality |> clean_names() |> head()

iris |> clean_names() |> dplyr::select(where(is.numeric)) |> head()

df<-iris |> 
  clean_names() |> 
  dplyr::select(where(is.numeric))

df |> head()

iris |>
  clean_names() |> 
  select_all(toupper) |> 
  head()


interested_cols <- c("mpg","test","cyl","disp","wt")

result <- mtcars %>%
  select(
    where(is.numeric) & any_of(interested_cols)
  )

result <- mtcars %>%
  select(
    where(is.numeric) & all_of(interested_cols)
  )
result %>% head()

  
  