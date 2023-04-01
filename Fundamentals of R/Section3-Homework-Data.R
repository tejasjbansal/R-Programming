#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit <- revenue - expenses

tax <- round(profit * 0.3,digits=2)
tax

profit.after.tax <- profit - tax
profit.after.tax


profit.margin <- round(profit.after.tax / revenue,2)*100
profit.margin


mean_pat <- mean(profit.after.tax)
good.months <- profit.after.tax > mean_pat
good.months


bad.months <- profit.after.tax < mean_pat
bad.months

max_pat <- max(profit.after.tax)
best.months <- profit.after.tax == max_pat
best.months


min_pat <- min(profit.after.tax)
worst.months <- profit.after.tax == min_pat
worst.months


revenue.1000 <- round(revenue/1000)
expenses.1000 <- round(expenses/1000)
profit.1000 <- round(profit/1000)
profit.after.tax.1000 <- round(profit.after.tax/1000)

revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000


m <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  profit.margin,
  good.months,
  bad.months,
  best.months,
  worst.months
)


m
