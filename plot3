# Read Dataset
data <- read.csv2("./household_power_consumption.txt", colClasses="character")

# Convert the Date to Date class
data[,"Date"] <- as.Date(data[,"Date"], "%d/%m/%Y")

dates <- as.Date(c("2007-02-01","2007-02-02"))

# create a subset with 2007-02-01 and 2007-02-02
data <- subset(data, data[,"Date"] %in% dates)

# Convert to numeric
data[,"Sub_metering_1"] <- as.numeric(data[,"Sub_metering_1"])
data[,"Sub_metering_2"] <- as.numeric(data[,"Sub_metering_2"])
data[,"Sub_metering_3"] <- as.numeric(data[,"Sub_metering_3"])

# Add datetime column
data[,"DateLong"] <- paste(data[,"Date"], data[,"Time"], sep=" ")

# Build plot
png("plot3.png", width=480, height=480)
plot(as.POSIXct(data[,"DateLong"]), data[,"Sub_metering_1"], type="l", 
     xlab="", ylab="Energy sub metering")

# Add lines
lines(as.POSIXct(data[,"DateLong"]), data[,"Sub_metering_2"], col="Red")
lines(as.POSIXct(data[,"DateLong"]), data[,"Sub_metering_3"], col="Blue") 

# Add legends
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("Black", "Red", "Blue"), lwd=1)

dev.off()

