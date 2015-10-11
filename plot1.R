# RCode for Plot1 for Exploratory Data Anaylsis Course Project
dataall <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE,  na.strings= "?") 
datasub <- subset(dataall, (dataall$Date == "1/2/2007" | dataall$Date== "2/2/2007"))
head(datasub)
tail(datasub)
# Plotting
Power <- datasub$Global_active_power
hist(Power, col= "red", xlab= "Global Active Power (kilowatts)", ylab= "Frequency", main= "Global Active Power")
# Create PNG
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
# Code End
