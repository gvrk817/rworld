#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
#download.file(fileUrl, destfile = "/Users/gangineni/Documents/Projects/RWorld/AmeriCommSurvey.xlsx", method="curl")

#install.packages("xlsx")
library(xlsx)

#read.xlsx("/Users/gangineni/Documents/Projects/RWorld/AmeriCommSurvey.xlsx")


#library(sqldf)
#oneMillAndMore <- read.csv.sql("AmeriCommSurvey.csv",sql = "select * from file where `Sepal.Length` > 5", eol = "\n")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl, destfile = "/Users/gangineni/Documents/Projects/RWorld/AmeriCmyommSurvey.csv", method="curl")
MyData <- read.csv(file="/Users/gangineni/Documents/Projects/RWorld/AmeriCommSurvey.csv", header=TRUE, sep=",")

# Question1: The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:
# 
# https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv
# 
# and load the data into R. The code book, describing the variable names is here:
#   
# https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf
# 
# How many properties are worth $1,000,000 or more?

mydata1 <- MyData[!is.na(MyData$VAL),]
l <- mydata1$VAL[mydata1$VAL == 24]
length(l)

#Question3: 


library("readxl")
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl, destfile = "/Users/gangineni/Documents/Projects/RWorld/NaturalGasAcquistionProg.xlsx", method="curl")

dat <- read_excel("/Users/gangineni/Documents/Projects/RWorld/NaturalGasAcquistionProg.xlsx", range = "R18C7:R23C15")

sum(dat$Zip*dat$Ext,na.rm=T)

#Question4

install.packages("XML")
library("XML")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
download.file(fileUrl, destfile = "/Users/gangineni/Documents/Projects/RWorld/BaltimoreRests.xml", method="curl")
xmldataframe <- xmlToDataFrame("/Users/gangineni/Documents/Projects/RWorld/BaltimoreRests.xml")


library("methods")
xmlp <- xmlParse("/Users/gangineni/Documents/Projects/RWorld/BaltimoreRests.xml")
length(xpathSApply(xmlp, "//row[./zipcode/text()='21231']"))

#Question5:

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileUrl, destfile = "/Users/gangineni/Documents/Projects/RWorld/IdahoHousing.csv", method="curl")

install.packages("fasttime")
install.packages("data.table") 
library("data.table") 
DT <- fread("/Users/gangineni/Documents/Projects/RWorld/IdahoHousing.csv")


