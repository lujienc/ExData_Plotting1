## Exploratory Data Analysis Project 1
## Histogram for Global Active Power

setwd("D:/Data Science Certificate/Course 4_Exploratory Data Analysis/Project")
raw <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)
poweruse <- subset(raw, Date=="1/2/2007"|Date=="2/2/2007")
## poweruse$Date <- as.Date(poweruse$Date, "%d/%m/%Y")
## poweruse$Time <- strptime(poweruse$Time, "%T")
png(file="plot2.png",  width = 480, height = 480, units = "px", type="windows")
dtime <- paste(poweruse$Date, poweruse$Time)
dtime <- strptime(dtime, "%d/%m/%Y %H:%M:%S")
plot(dtime, poweruse$Global_active_power, type="n", xlab="", ylab="Global Collective Power (kilowatts)")
lines(dtime, poweruse$Global_active_power)
dev.off()


