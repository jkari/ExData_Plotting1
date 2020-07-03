source('data.R')

plot(data$Time, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab='')

plot(data$Time, data$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(data$Time, data$Sub_metering_2, col='red')
lines(data$Time, data$Sub_metering_3, col='blue')
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)

dev.copy(png, file='plot3.png')
dev.off()