# Dealing with Missing Data
#
# 1. Replace with mean or median
# 2. Remove record entirely
# 3. Leave record as it
# 4. Fill in by exploring correlations and similarities
# 5. Introduce dummy variable for "Missingness"


#What is NA?

?NA

NA == NA
TRUE == NA  
FALSE == NA


#Locating Missing data

head(data,24) 
complete.cases(data)# It indicates FALSE if any one of the row having NA value
data[!complete.cases(data),]
str(data)

#Filtering: Using which() for non-missing data
data[data$Revenue == 9746272,]
?which # which indices are true

data[which(data$Revenue == 9746272),]

data[which(data$Employees == 45),]

#filtering: using is.na() for missing data
head(data,24)
is.na(data$Revenue)
data[is.na(data$Revenue),]

#Remove records with missing data
data_bak <- data

data[!complete.cases(data),]
data[is.na(data$Industry),]
data <- data[!is.na(data$Industry),]

data[!complete.cases(data),]


#Resetting the dataframe index

rownames(data) <- 1:nrow(data)
 # OR
rownames(data) <- NULL
data


# Replacing missing data: Factual Analysis

data[!complete.cases(data),]

data[is.na(data$State),]

data[is.na(data$State) & data$City=="New York","State"] <- "NY"

#Check
data[c(11,377),]


data[is.na(data$State),]

data[is.na(data$State) & data$City=="San Francisco","State"] <- "CA"

#Check
data[c(82,265),]


# Replacing Missing Data: Median Imputation Method (Part 1)

data[!complete.cases(data),]

med_empl_retail <- median(data[data$Industry=="Retail","Employees"],na.rm=TRUE)

data[is.na(data$Employees) & data$Industry=="Retail","Employees"] <- med_empl_retail

#Check:
data[3,]

med_empl_Fin <- median(data[data$Industry=="Financial Services","Employees"],na.rm=TRUE)
med_empl_Fin
data[is.na(data$Industry) & data$Industry=="Financial Services","Employees"] <- med_empl_Fin


# Replacing Missing data: Median Imputation Method (Part 2)

med_growth_constr <- median(data[data$Industry=="Construction","Growth"],na.rm = TRUE)
med_growth_constr
data[is.na(data$Growth) & data$Industry=="Construction","Growth"]

data[is.na(data$Growth) & data$Industry=="Construction","Growth"] <- med_growth_constr
data[8,]

# Revenue:

med_rev_constr <- median(data[data$Industry=="Construction","Revenue"],na.rm = TRUE)
med_rev_constr
data[is.na(data$Revenue) & data$Industry=="Construction","Revenue"] <- med_rev_constr


#Expenses:


med_exp_constr <- median(data[data$Industry=="Construction","Expenses"],na.rm = TRUE)
med_exp_constr
data[is.na(data$Expenses) & data$Industry=="Construction" & is.na(data$Profit),"Expenses"] <- med_exp_constr


# Deriving Values Method
# Revenue - Expenses = Profit
# Expenses = Revenue - Profit

data[is.na(data$Profit),"Profit"] <- data[is.na(data$Profit),"Revenue"] - data[is.na(data$Profit),"Expenses"]

data[c(8,42),]



data[is.na(data$Expenses),"Expenses"] <- data[is.na(data$Expenses),"Revenue"] - data[is.na(data$Expenses),"Profit"]






















