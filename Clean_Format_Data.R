#download File--
filepath <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(filepath,destfile = "Dataset.zip")
unzip(zipfile = "Dataset.zip")

#load Data
householdpowerdata <- read.table("household_power_consumption.txt",sep=";", header = TRUE, na.strings = "?")

#Filter Data
countFeb <- which(householdpowerdata$Date == "1/2/2007" | householdpowerdata$Date == "2/2/2007" )
householdpowerdata_Feb <- householdpowerdata [countFeb,]

#Formating Date 
SetTime <-strptime(paste(householdpowerdata_Feb$Date, householdpowerdata_Feb$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
householdpowerdata_Feb <- cbind(SetTime,householdpowerdata_Feb)