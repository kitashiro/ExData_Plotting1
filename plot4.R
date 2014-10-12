source("helper.R")
data <- load.data()
png(file="plot4.png", width=480, height=480, bg="transparent")
par(mfcol = c(2, 2))

# top left plot
with(data, plot(PosixDate, Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)"))
with(data, lines(PosixDate, Global_active_power))

# bottom left plot
with(data, plot(PosixDate, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
with(data, lines(PosixDate, Sub_metering_1))
with(data, lines(PosixDate, Sub_metering_2, col="red"))
with(data, lines(PosixDate, Sub_metering_3, col="blue"))
legend("topright", pch=NA, lty=c(1,1,1), col = c("black", "red", "blue"), bty = "n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# top right plot
with(data, plot(PosixDate, Voltage, type="n", xlab="datetime", ylab="Voltage"))
with(data, lines(PosixDate, Voltage))

# bottom left plot
with(data, plot(PosixDate, Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power"))
with(data, lines(PosixDate, Global_reactive_power))

dev.off()
