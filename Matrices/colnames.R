

#Named Vector

Charlie <- 1:5
Charlie

#give names

names(Charlie) <- c("A","B","C","D","E")
names(Charlie)
Charlie["D"]


#Clear names
names(Charlie) <- NULL
Charlie

#Naming Matrix Dimension 1
temp.vec <- rep(c("a","B","zZ"),each=3)
temp.vec

Bravo <- matrix(temp.vec,3,3)
Bravo

# Colnames() and Rownames()

colnames(Bravo) <- c("A","B","C")
rownames(Bravo) <- c("How","are","you")

Bravo

Bravo["How",1]













