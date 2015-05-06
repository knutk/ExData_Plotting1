# This functions reads the dataset assuming its in a folder called <Data>. it also writes a file called 
# <cleaned_and_filtered_data.csv> it it doesnt exist. This files contains the cleaned and filtered dataset
# and loads much faster since its much smaller. Need to have lubridate insta

load_data <- function() {
  library(lubridate)
  if(file.exists("./Data/cleaned_and_filtered_data.rds")) {
    data <- readRDS("./Data/cleaned_and_filtered_data.rds")
    return(data)
  } else {
  colTypes = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
  data <- read.csv2('./Data/household_power_consumption.txt', na.strings="?", colClasses=colTypes, 
                    header=TRUE, dec=".")
  
  # Convert date column to date objects
  data$Date <- dmy(data$Date)
  
  # Make logicals and subset the data
  idx1 <- data$Date == ymd("2007-02-01")
  idx2 <- data$Date == ymd("2007-02-02")
  data2 <- data[idx1 | idx2,]
  
  # Create datetime column
  data2$datetime <- ymd_hms(paste(data2$Date, data2$Time))
  
  # New row index
  rownames(data2) <- 1:nrow(data2)
  
  # Write to file for easy loading
  saveRDS(data2, "./Data/cleaned_and_filtered_data.rds", ascii=TRUE)
  
  return(data2)
  }
}