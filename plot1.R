source("Clean_Format_Data.R")
png(filename='plot1.png',width=480,height=480,units='px')
hist(householdpowerdata_Feb$Global_active_power, col="red" ,main="Global Active Power", xlab="Global Active Power (kilowatts)")
x<-dev.off()
