# Plot 3

# Set wd
setwd('/Users/knutk/Dropbox/Classes/DataScience/ExploratoryDataAnalysis/ExData_Plotting1/')

# Load the data
source('load_data.R')
data <- load_data()

# Make the plot
png(filename="plot3.png")

with(data, plot(datetime, Sub_metering_1, type="l", xlab="", ylab = "Energy sub metering"))
with(data, lines(datetime, Sub_metering_2, col="red"))
with(data, lines(datetime, Sub_metering_3, col="blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=1, lwd=2)

dev.off()
