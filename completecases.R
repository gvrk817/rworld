complete <- function(directory, id = 1:332) {
  setwd("/Users/gangineni/Documents/Projects")
  directory <- paste(getwd(),"/",directory,"/",sep="")
  file_list <- list.files(directory)
  dataOP <- NA
  colnams <- c("id", "nobs")
  for (i in id) {
  file_data <- NA
  cmpCases <- 0
  #dataOP <- NA
  totlsDf <- NA
  
  
  file_dir <- paste(directory,file_list[i],sep="")
  file_data <- read.csv(file_dir)
  #print(class(file_data))
  file_data <- na.omit(file_data)
  cmpCases <- sum(complete.cases(file_data))
  totlsDf <- data.frame(i,cmpCases)
  dataOP <- rbind(dataOP, totlsDf)
  dataOP <- na.omit(dataOP)
  }
  colnames(dataOP) <- colnams
  print(dataOP)
  
  #To empty the dataframe
  #file_data <- file_data[FALSE,]
}