#Functions
#Define a function to convert the temperature from F --> C

#Function declaration
fah_to_cels <- function(temperature_) {
  #Function body
  temperature_in_C <- (temperature_in_F - 32) * 5 / 9
  
  return(temperature_in_C)
}

#Write a function to convert cel_to_kelvin
#temperature in Kelvin = temperature in C + 273.15
#Function declaration
cel_to_kelvin <- function(temperature_in_C) {
  #Function body
  temperature_in_K <- temperature_in_C + 273.15
  
  return(temperature_in_K)
}

temp_C <- 100

fah_to_kelvin <- function(temperature_in_F) {
  #Variable scope  
  temp_C <- fah_to_cels(temperature_in_F)
  temperature_in_K <- cel_to_kelvin(temp_C)
  
  return(temperature_in_K)
}

temp_C <- 150



temp_F <- 50
temp_C <- (temp_F - 32) * 5 / 9 

fah_to_cels(50)   #encapsulation



fah_to_kelvin(50)


#Write a function to praise yourself or your friend
#input: a name
#output: a sentence to praise name
#Ex: "Hi ...., You are incredible!"
praise_myself <- function(name) {
  #output <- c(name, praise())  
  output <- paste('Hello ', name, ',', praise())
  return(output)
}

praise_myself('Khuong')









analyze <- function(filename)  {
  print(filename)
  #Load the data: inflammation-01.csv
  data <- read.csv(filename, header=FALSE)
  #Calculate the average inflammation for 40 days 
  avg_inflammation_data <- apply( data, 2, mean)
  #Calculate the min inflammation for 40 days 
  min_inflammation_data <- apply( data, 2, min)
  #Calculate the max inflammation for 40 days 
  max_inflammation_data <- apply( data, 2, max)
  #Plot the average data 
  
  par(mfrow=c(1,3))
  plot(avg_inflammation_data, main=filename)
  #par(new=TRUE)
  #Plot the min data 
  plot(min_inflammation_data, type='l', col='red')
  #par(new=TRUE)
  #Plot the max data 
  plot(max_inflammation_data, col='green')
  
}

analyze('data/inflammation-05.csv')










