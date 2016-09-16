# Plot 2
png("plot2.png")

plot(newData$Datetime, newData$Global_active_power,
     xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

dev.off()