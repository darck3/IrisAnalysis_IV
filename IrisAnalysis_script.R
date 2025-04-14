#Installing and Initializing Packages

install.packages("tidyverse")

install.packages("renv")

library(tidyverse)

library(renv)

library(ggplot2)

#Save the state of your library

renv::snapshot()

#Load and explore dataset

data = iris

view(data)

dim(data)

summary(data)

#Data Manipulation

#Filter rows where Species is "virginica"

iris_virginica_setosa <- iris %>% filter(Species == "virginica")

#Data Visualization with ggplot2

ggplot(iris_virginica, aes(x = Sepal.Length, y = Petal.Length, colour = Species)) +
  geom_point() +
  labs(title = "Sepal Length vs Petal.Length", x = "Sepal Length", y = "Petal.Length") + theme_minimal()
