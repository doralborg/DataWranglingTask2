# Springboard: Foundations of Data Science Workshop
# Data Wrangling Exercise 2
# Author Dora L. Borg

library(dplyr)
library(tidyr)

titanic_original <- read.csv("titanic_original.csv")
titanic <- titanic_original

# replace missing value in embarked colomn with S (embarked at Southampton)

titanic$embarked[titanic$embarked == ""] <- "S"
  
#find missing values in variable age and replace with the mean of the rest of the values

titanic$age[titanic$age == ""] <- mean(titanic$age,na.rm = TRUE)

# fill missing boat values with NA

titanic$boat[titanic$boat == ""] <- NA

# create new column has_cabin_number which has 1 if there is a cabin number, and 0 otherwise

titanic$has_cabin<- ifelse(titanic$cabin == "", 0,1)


