
N <- 1000

random_nums <- rnorm(N)
count <- 0
for(i in random_nums){
  if(i > -1 & i < 1){
    count <- count + 1
  }
}

result <- count/N
result
