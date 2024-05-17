library(tidyverse)
dplyr::select(mtcars,mpg,cyl,wt)
# Ctrl + Shift + M = |> 

mtcars |> dplyr::select(mpg,cyl,wt) |> head()
mtcars |> dplyr::select(mpg:hp,gear) |> head()
mtcars |> dplyr::select(-drat) |> head()
# ends with p OR contains se ||
mtcars |> dplyr::select(ends_with("p"), contains("se")) |> head()


head(mtcars)


df1 <- mtcars |> dplyr::select(ends_with("p")) |> head()

df2 <- mtcars |> dplyr::select(contains("se")) |> head()

df1 |> bind_cols(df2)
df1;df2


iris |> head()
str(iris)

iris |> dplyr::select(-Species) |> head()

mtcars |> dplyr::select_if(is.numeric) |> head()

