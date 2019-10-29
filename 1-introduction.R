
#Declare a variable as an example
var <- 5

#Load the data from the data folder with header set to FALSE
data <- read.csv('data/inflammation-01.csv', header=FALSE)

#Calculate the average data 
avg_inflammation_data <- apply(data, 2, mean)

#Plot the data
plot(avg_inflammation_data)