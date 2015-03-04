setwd("C:/Users/caozhiy/Documents/data/ds4/project1")
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", dec=".", skip=66637, nrows=2934)
names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
globalActivePower <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()