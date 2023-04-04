#-------------Introduction to qplot()

library(ggplot2)
?qplot()

setwd("C:\\Users\\tejas\\OneDrive\\Desktop\\R Programming\\DataFrames")
stats <- read.csv("P2-Demographic-Data.csv")

qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Income.Group,y=Birth.rate)
qplot(data=stats,x=Income.Group,y=Birth.rate,size=I(3))
qplot(data=stats,x=Income.Group,y=Birth.rate,size=I(3),color=I("blue"))

qplot(data=stats,x=Income.Group,y=Birth.rate,geom="boxplot")


qplot(data=stats,x=Internet.users,y=Birth.rate,size=I(5),color=Income.Group)
