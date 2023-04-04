

#Importing the data
#Select File Manually
stats <- read.csv(file.choose())
stats


#Method 2 : Set WD and Read Data
getwd()
setwd("C:\\Users\\tejas\\OneDrive\\Desktop\\R Programming\\DataFrames")

rm(stats)
stats <- read.csv("P2-Demographic-Data.csv")
stats


#----------------Exploring Data
stats
nrow(stats)
ncol(stats)
head(stats,n=10)
tail(stats)

str(stats)
summary(stats)


#---------------Using the $ sign
stats[3,3]
stats[3,"Birth.rate"]
stats$Internet.users
stats$Internet.users[2]
stats[,"Internet.users"]
levels(stats$Income.Group)

#-----------------Basic Operations with a DF
stats[1:10,]
stats[3:9,]
stats[c(4,100),]

is.data.frame(stats[1,])
is.data.frame(stats[,1,drop=F])

#Multiply columns
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

#add columns
stats$mycol <- stats$Birth.rate * stats$Internet.users
stats$xyz <- 1:5

#Remove columns

stats$xyz <- NULL


head(stats)


#--------------------------Filtering a DataFrame
head(stats)
stats[stats$Internet.users < 2,]
stats[stats$Birth.rate>40,]

stats[stats$Birth.rate>40 & stats$Internet.users < 2,]
stats[stats$Income.Group == "High income",]

stats[stats$Country.Name == "Malta",]

















