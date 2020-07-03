source('data.R')

hist(data$Global_active_power, col="red", xlab='Global Active Power (kilowatts)', xlim=c(0,6), main="Global Active Power")

dev.copy(png, file='plot1.png')
dev.off()