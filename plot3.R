# Plot 3
png("plot3.png")

plot(newData$Datetime, newData$Sub_metering_1,
     xlab = "", ylab = "Energy sub metering", type = "l")
lines(newData$Datetime, newData$Sub_metering_2, col = "red")
lines(newData$Datetime, newData$Sub_metering_3, col = "blue")

legend("topright", legend = paste0("Sub_metering_", 1:3), 
       col = c("black", "red", "blue"), lty = 1)

dev.off()