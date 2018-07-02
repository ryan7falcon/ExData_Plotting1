cons <- read.csv("household_power_consumption.txt", sep=";")
sub = subset(cons, Date=="1/2/2007" | Date=="2/2/2007")
sub$dt <- strptime(paste(sub$Date, sub$Time), format="%d/%m/%Y %H:%M:%S")
sub$sm1 <- as.double(as.character(sub$Sub_metering_1))
sub$sm2 <- as.double(as.character(sub$Sub_metering_2))
sub$sm3 <- as.double(as.character(sub$Sub_metering_3))

png(filename="plot3.png")
with(sub, plot(dt, sm1, ylab="Energy in metering", xlab="", type="l"))
lines(sub$dt, sub$sm2, col="red")
lines(sub$dt, sub$sm3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, col=c("black", "red", "blue"))
dev.off()

