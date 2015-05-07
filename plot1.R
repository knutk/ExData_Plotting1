# Plot 1

# Set wd
setwd('/Users/knutk/Dropbox/Classes/DataScience/ExploratoryDataAnalysis/ExData_Plotting1/')

# Load the data
source('load_data.R')
data <- load_data()

# Make the plot and save the file to a .png file
png(filename="plot1.png")

hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()
