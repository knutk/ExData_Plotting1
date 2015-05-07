# Plot 2

# Set wd
setwd('/Users/knutk/Dropbox/Classes/DataScience/ExploratoryDataAnalysis/ExData_Plotting1/')

# Load the data
source('load_data.R')
data <- load_data()

# Make the plot and save the file to a .png file
png(filename="plot2.png")

plot(data$datetime, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.off()
