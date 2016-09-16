# Plot 1
png("plot1.png")

hist(newData$Global_active_power, 
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency", 
     main = "Global Active Power", 
     col = "red")

dev.off()