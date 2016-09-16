# Run this file first!
# Loading useful libraries
library(readr)
library(dplyr)
library(lubridate)

# File is downloaded into current Working Directory
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.zip")
datafile <- unz("household_power_consumption.zip", "household_power_consumption.txt")
# Read data using the readr package, specify the parse method

mydata <- read_delim(datafile, ";", col_types = cols(Date = col_date("%d/%m/%Y"), Time = "c"))

# Extract required dates
reqData <- filter(mydata, Date == ymd("2007-02-01") | Date == ymd("2007-02-02"))

# Combine Date and Time into Datetime and replace Date/Time columns with Datetime
Datetime <- strptime(paste(reqData$Date, reqData$Time), "%Y-%m-%d%T")
newData <- cbind(Datetime, select(reqData, -(Date:Time)))