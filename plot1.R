# Read Dataset
data <- read.csv2("./household_power_consumption.txt", colClasses="character")

# Convert the Date to Date class
data[,"Date"] <- as.Date(data[,"Date"], "%d/%m/%Y")

dates <- as.Date(c("2007-02-01","2007-02-02"))

# create a subset with 2007-02-01 and 2007-02-02
data <- subset(data, data[,"Date"] %in% dates)
data[,"Global_active_power"] <- as.numeric(data[,"Global_active_power"])

# create plot 
png("plot1.png", width=480, height=480)

#Create Hist
hist(data[,"Global_active_power"], col="Red", main="Global Active Power", 
     ylab="Frequency", xlab="Global Active Power (kilowatts)")
dev.off()
