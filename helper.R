load.data <- function()
{
  data <- read.table(
    "household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")
  
  # add posix date/time column
  data$PosixDate <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
  
  # reduce data to only those dates we care about
  subset(data, PosixDate >=strptime("2007-02-01", "%Y-%m-%d") & PosixDate < strptime("2007-02-03", "%Y-%m-%d"))
}
