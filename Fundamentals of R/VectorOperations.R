

x <- rnorm(5)
x

# R specific programming loop
for(i in x){
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#Conventioanl Loop

for(j in 1:5){
  print(x[j])
}


N <- 100
a <- rnorm(N)
b <- rnorm(N)

#Vectorized Approach
c <- a*b
c


















