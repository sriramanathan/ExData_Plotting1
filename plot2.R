# RCode for Plot2 for Exploratory Data Anaylsis Course Project
dataall <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE,  na.strings= "?") 
datasub <- subset(dataall, (dataall$Date == "1/2/2007" | dataall$Date== "2/2/2007"))
head(datasub)
tail(datasub)
# Plotting
Day <- strptime(paste(datasub$Date, datasub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Power <- datasub$Global_active_power
plot(Day,Power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
# Create PNG
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
# Code End
