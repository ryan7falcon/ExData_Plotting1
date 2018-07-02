cons <- read.csv("household_power_consumption.txt", sep=";")
sub = subset(cons, Date=="1/2/2007" | Date=="2/2/2007")
sub$dt <- strptime(paste(sub$Date, sub$Time), format="%d/%m/%Y %H:%M:%S")

png(filename="plot2.png")
with(sub, plot(dt, Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l"))
dev.off()

