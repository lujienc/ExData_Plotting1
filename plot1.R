## Exploratory Data Analysis Project 1
## Histogram for Global Active Power

setwd("D:/Data Science Certificate/Course 4_Exploratory Data Analysis/Project")
raw <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)
poweruse <- subset(raw, Date=="1/2/2007"|Date=="2/2/2007")
png(file="plot1.png",  width = 480, height = 480, units = "px", type="windows")
hist(poweruse$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()