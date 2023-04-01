
# Vector

#Types of Vector

# Numeric,Character,...

# Even a single number in R is vector.

MyFirstVector <- c(3L,45L,56L,732L)
typeof(MyFirstVector)
is.numeric(MyFirstVector)
is.integer(MyFirstVector)

MyFirstVector2 <- c(3,45,56,732)
typeof(MyFirstVector2)
is.numeric(MyFirstVector2)
is.integer(MyFirstVector2)

v3 <- c("A","B","C")
is.character(v3)
is.numeric(v3)

seq() #sequence - like ':'
rep() #replicate

seq(1,15)
1:15

z <- seq(1,15,4)
z


rep(3,50)
d <- rep(3,50)
k <- rep("a",5)


d[1]
d[1:3]
z[c(1,3,5)]


seq(1,15) + seq(1,10)
