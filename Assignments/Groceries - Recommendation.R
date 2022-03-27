## Apriori algorithm

#Data Preprocessing
library(arules)

groceries = read.transactions('2b0b56b1-0ffc-4f1d-b16e-71c191eab3bd-groceries.csv',sep=',',rm.duplicates = TRUE)
summary(groceries)


itemFrequencyPlot(groceries,topN=10)  #Taking the Top 10 items transacted

#Training the model

# Buidling a Makret Basket analysis using Apriori algorithm
rules = apriori(data=groceries,parameter = list(support=0.007,confidence=0.2,minlen=2,maxlen=2))
7*100/9835 #total elements assuming to take support for a week and at least for 100 customers who would visit the store.

#Looking at the output
inspect(sort(rules,by='lift')[1:10])
