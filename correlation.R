corr <- function(directory, threshold = 0) {
  finalVec <- vector()
  setwd("/Users/gangineni/Documents/Projects")
  directory <- paste(getwd(),"/",directory,"/",sep="")
  file_list <- list.files(directory)
  dataOP <- NA
  colnams <- c("id", "nobs")
  id = 1:length(file_list)
  for (i in id) {
    file_data <- NA
    cmpCases <- 0
    #dataOP <- NA
    totlsDf <- NA
    
    
    file_dir <- paste(directory,file_list[i],sep="")
    file_data <- read.csv(file_dir)
    #print(class(file_data))
    file_data <- na.omit(file_data)
    cmpCases <- complete.cases(file_data)
    compCsCount <- sum(complete.cases(file_data))
    totlsDf <- file_data[cmpCases,]
    #print(head(totlsDf))
  
    if(compCsCount > threshold){
    a <- cor(totlsDf$sulfate, totlsDf$nitrate)
    finalVec <- c(finalVec, a)
  }
  #b <- finalVec > threshold
   
   #t <- a[a>threshold]
   #print(t)
  }
  finalVec
  #To empty the dataframe
  #file_data <- file_data[FALSE,]
}