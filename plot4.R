# Plot 3

# Set wd
setwd('/Users/knutk/Dropbox/Classes/DataScience/ExploratoryDataAnalysis/ExData_Plotting1/')

# Load the data
source('load_data.R')
data <- load_data()

# Make the plot

png(filename="plot4.png")
par(mfrow=c(2,2))

# First subplot
plot(data$datetime, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

# Second subplot
plot(data$datetime, data$Voltage, type="l", ylab="Voltage", xlab="datetime")

# Third plot
with(data, plot(datetime, Sub_metering_1, type="l", xlab="", ylab = "Energy sub metering"))
with(data, lines(datetime, Sub_metering_2, col="red"))
with(data, lines(datetime, Sub_metering_3, col="blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=1, bty="n", cex=0.9)

# Fourth plot
plot(data$datetime, data$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")

# Write to plot4.png
dev.off()
