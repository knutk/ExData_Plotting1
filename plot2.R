# Plot 2

# Set wd
setwd('/Users/knutk/Dropbox/Classes/DataScience/ExploratoryDataAnalysis/ExData_Plotting1/')

# Load the data
source('load_data.R')
data <- load_data()

# Make the plot and save the file to a .png file
plot(data$datetime, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

# Write to plot2.png
dev.copy(png, file="plot2.png")
dev.off()
