

Salary[,1]
Salary[1,5]

Salary[5,]
Games
MinutesPlayed

#rbind()
group1 <- c("Tejash","AVI","Divey")
group2 <- c("Sraj","Rajesh","Sneha")

col <- c("Supertech","Cognizant")
row <- c("1","2","3")
  

matrix <- rbind(group1,group2)
colnames(matrix) <- row
rownames(matrix) <- col

matrix



#matrix()
my.data <- 1:20
my.data

A <- matrix(my.data,4,5)
A

B <- matrix(my.data,4,5,byrow=T)
B
B[2,5]



#cbind()

group1 <- c("Tejash","AVI","Divey")
group2 <- c("Sraj","Rajesh","Sneha")

matrix <- cbind(group1,group2)
matrix



