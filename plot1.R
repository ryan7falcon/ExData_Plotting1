cons <- read.csv("household_power_consumption.txt", sep=";")
sub = subset(cons, Date=="1/2/2007" | Date=="2/2/2007")

png(filename="plot1.png")
with(sub, hist(as.double(as.character(Global_active_power)), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)"))
dev.off()

