data <- read.csv('household_power_consumption.txt', sep=';', dec='.', na.strings='?')

data$Time <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data <- subset(data, Date>='2007-02-01' & Date<='2007-02-02')
