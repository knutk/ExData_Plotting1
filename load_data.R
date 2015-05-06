load_data <- function() {
  colTypes = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
  data <- read.csv2('Data/household_power_consumption.txt', na.strings="?", colClasses=colTypes, skip=1, dec=".")
  # Format: Date - dd/mm/yyyy | time - hh:mm:ss | 
  
  # Set column names
  colnames(data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                      "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  
  # Convert date column to date objects
  data$Date <- strptime(data$Date, format="%d/%m/%Y")
  idx1 <- data$Date == strptime("2007-02-01", format="%Y-%m-%d")
  idx2 <- data$Date == strptime("2007-02-02", format="%Y-%m-%d")
  data2 <- data[idx1 | idx2,]
  return(data2)
}