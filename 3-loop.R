#for each of the "item" in the "list" {
  
#  perform some operation on that "item"
  
#}

list_words <- c("Let", "the", "computer", "do", "the", "work")

for (word in list_words) { 
  
  print(word)

}

#Exercise:
vowels <- c('a', 'e', 'i', 'o', 'u')
#Use for loop to count how many vowels are there in vowels
counter <- 0
for (item in vowels) {
  
  counter <- counter + 1
  
}

counter

filename = 'data/inflammation-01.csv'

analyze(filename)


file_list <- list.files(path = 'data', pattern='inflam', full.names = TRUE)

for (filename in file_list) 
{
  print(filename) 
  analyze(filename)
}














