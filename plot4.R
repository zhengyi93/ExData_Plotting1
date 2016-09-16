# Plot 4
png("plot4.png")

par(mfrow = c(2, 2))

plot(newData$Datetime, newData$Global_active_power,
     xlab = "", ylab = "Global Active Power",
     type = "l")

plot(newData$Datetime, newData$Voltage,
     xlab = "datetime", ylab = "Voltage",
     type = "l")

plot(newData$Datetime, newData$Sub_metering_1,
     xlab = "", ylab = "Energy sub metering", 
     type = "l")
lines(newData$Datetime, newData$Sub_metering_2, col = "red")
lines(newData$Datetime, newData$Sub_metering_3, col = "blue")

legend("topright", legend = paste0("Sub_metering_", 1:3), 
       col = c("black", "red", "blue"), lty = 1, bty ="n")

plot(newData$Datetime, newData$Global_reactive_power,
     xlab = "datetime", ylab = "Global_reactive_power",
     type = "l")

dev.off()