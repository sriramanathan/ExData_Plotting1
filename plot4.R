# RCode for Plot2 for Exploratory Data Anaylsis Course Project
dataall <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE,  na.strings= "?") 
datasub <- subset(dataall, (dataall$Date == "1/2/2007" | dataall$Date== "2/2/2007"))
head(datasub)
tail(datasub)
# Data Subset
Day <- strptime(paste(datasub$Date, datasub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
ActPower <- datasub$Global_active_power
ReacPower <- datasub$Global_reactive_power
SM1 <- datasub$Sub_metering_1
SM2 <- datasub$Sub_metering_2
SM3 <- datasub$Sub_metering_3
Voltage <- datasub$Voltage
# Settings
colrstyle = c("black","red","blue")
labelnames = c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  ")
# Plotting
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
plot(Day, ActPower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(Day, Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(Day, SM1, type="l", ylab="Energy sub Metering", xlab="")
lines(Day, SM2, type="l", col="red")
lines(Day, SM3, type="l", col="blue")
legend("topright", col=colrstyle, labelnames ,lty=1, lwd=2)
plot(Day, ReacPower, type="l", xlab="datetime", ylab="Global_reactive_power")
# Create PNG
dev.off()
# Code End
