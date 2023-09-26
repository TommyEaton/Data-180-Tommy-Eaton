#install.packages("dplyr")
library(MASS)
library(dplyr)

ls(Cars93)
Cars93_Ex1<-select(Cars93,Type,EngineSize,DriveTrain,MPG.city)

head(Cars93_Ex1)
table(Cars93$Type)

Cars93_Ex2<-filter(Cars93, Type=="Small")
head(Cars93_Ex2)


Cars93_Ex3<-select(filter(Cars93, Type=="Small" ),Model,EngineSize,Horsepower,MPG.highway)
head(Cars93_Ex3)

Cars93_Ex4<-select(filter(Cars93,Horsepower>150), Model,EngineSize,Horsepower,MPG.highway)
head(Cars93_Ex4)

Cars93_Ex5<-select(filter(Cars93, Horsepower>120 & Type=="Small"), + Model, EngineSize,Horsepower,MPG.highway)
head(Cars93_Ex5)


Cars93_Ex7<-select(filter(Cars93, Type %in% c("Sporty", "Compact") & Horsepower>=120), + Model,Type,EngineSIze,Cylinders,Horsepower,MPG.highway)
head(Cars93_Ex7)

Cars93_Ex8<-Cars93 %>%
  + filter(type)