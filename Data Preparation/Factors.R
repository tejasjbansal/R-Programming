data <- read.csv(file.choose(),na.strings = c(""))
head(data)
tail(data,10)
str(data)
summary(data)

data["Industry"][1,]

#Changing from non-factor to factor

data$ID <- factor(data$ID)
str(data)


data$Inception <- factor(data$Inception)
str(data)


#Factor Variable trap(FVT)
#Converting into Numeric from Charaters:
a <- c("1","2","3","4","5")
a
typeof(a)
b <- as.numeric(a)
typeof(b)

#Converting into Numeric from Factors
z <- factor(c("1","2","2","4","4"))
typeof(z)

y<-as.numeric(z)
y

#Correct way
y<- as.numeric(as.character(z))
y


#sub() and gsub()

?sub

head(data)

data["Expenses"][1,]

data$Expenses <- gsub("Dollars","",data$Expenses)
data$Expenses <- gsub(",","",data$Expenses)
data$Expenses

str(data)

data$Revenue <- gsub("\\$","",data$Revenue)
data$Revenue <- gsub(",","",data$Revenue)
data$Revenue
str(data)


data$Growth <- gsub("%","",data$Growth)
head(data)


data$Expenses <- as.numeric(data$Expenses)
data$Revenue <- as.numeric(data$Revenue)
data$Growth <- as.numeric(data$Growth)
str(data)
