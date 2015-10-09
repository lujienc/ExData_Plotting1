## Exploratory Data Analysis Project 1
## Four plots in a panel

setwd("D:/Data Science Certificate/Course 4_Exploratory Data Analysis/Project")
raw <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)
poweruse <- subset(raw, Date=="1/2/2007"|Date=="2/2/2007")
dtime <- paste(poweruse$Date, poweruse$Time)
dtime <- strptime(dtime, "%d/%m/%Y %H:%M:%S")
lgn <- names(poweruse)
png(file="plot4.png",  width = 480, height = 480, units = "px", type="windows")
par(mfrow=c(2, 2))
## First plot
plot(dtime, poweruse$Global_active_power, type="n", xlab="", ylab="Global Collective Power (kilowatts)")
lines(dtime, poweruse$Global_active_power)
## Second plot
plot(dtime, poweruse$Voltage, type="n", xlab="datetime", ylab="Voltage")
lines(dtime, poweruse$Voltage)
## Third plot
plot(dtime, poweruse$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(dtime, poweruse$Sub_metering_1, col="black")
lines(dtime, poweruse$Sub_metering_2, col="red")
lines(dtime, poweruse$Sub_metering_3, col="blue")
legend("topright", legend=lgn[7:9], col=c("black", "red", "blue"), lty=c(1, 1, 1), bty="n")
## Forth plot
plot(dtime, poweruse$Global_reactive_power, type="n", xlab="datetime", ylab=lgn[4])
lines(dtime, poweruse$Global_reactive_power)
dev.off()

