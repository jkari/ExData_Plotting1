source('data.R')

par(mfrow=c(2,2))

# plot 1
plot(data$Time, data$Global_active_power, type="l", ylab="Global Active Power", xlab='')

# plot 2
plot(data$Time, data$Voltage, xlab="datetime", ylab="Voltage", type="l")

# plot 3
plot(data$Time, data$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(data$Time, data$Sub_metering_2, col='red')
lines(data$Time, data$Sub_metering_3, col='blue')
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)

# plot 4
plot(data$Time, data$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")

dev.copy(png, file='plot4.png')
dev.off()