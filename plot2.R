# Read Dataset
data <- read.csv2("./household_power_consumption.txt", colClasses="character")

# Convert the Date to Date/Time class
data[,"Date"] <- as.Date(data[,"Date"], "%d/%m/%Y")

dates <- as.Date(c("2007-02-01","2007-02-02"))

# create a subset with 2007-02-01 and 2007-02-02
data <- subset(data, data[,"Date"] %in% dates)

# Convert to numeric
data[,"Global_active_power"] <- as.numeric(data[,"Global_active_power"])

# Add datetime column
data[,"DateLong"] <- paste(data[,"Date"], data[,"Time"], sep=" ")

# create plot 
png("plot2.png", width=480, height=480)
plot(as.POSIXct(data[,"DateLong"]), data[,"Global_active_power"], type="l", 
     xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
