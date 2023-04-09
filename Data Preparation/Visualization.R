# Visualization

#A scatterplot classified by industry showing revenue,expenses,profit
#A scatterplot that includes industry trends for the expenses-revenue relationship
#BoxPlots showing growth by industry

library(ggplot2)
#A scatterplot classified by industry showing revenue,expenses,profit
p <- ggplot(data=data)
p
p+ geom_point(aes(x=Revenue,y=Expenses,color=Industry,size=Profit))

#A scatterplot that includes industry trends for the expenses-revenue relationship
d <- ggplot(data=data, aes(x=Revenue,y=Expenses,color=Industry))
d + geom_point() + geom_smooth(fill=NA,size=1.2)


#BoxPlots showing growth by industry
f <- ggplot(data=data,aes(x=Industry,y=Growth,color=Industry))
f + geom_boxplot(size = 1)

