source("helper.R")
data <- load.data()
png(file="plot2.png", width=480, height=480, bg="transparent")
with(data, plot(PosixDate, Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)"))
with(data, lines(PosixDate, Global_active_power))
dev.off()