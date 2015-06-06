#Set the working directory 

setwd("D:/DataScience/Exploratory Data Analysis/Project 1/exdata_data_household_power_consumption")

## Load the data to R

load_data <- function() {
  
  FDS <- read.table("household_power_consumption.txt",
                    header = TRUE,
                    sep = ";",
                    colClasses = c("character", "character", rep("numeric",7)),
                    na = "?")
 
  #Get the subset of data between 2007-02-01 and 2007-02-02
  FDS <- FDS[FDS$Date %in% c("1/2/2007","2/2/2007") ,]
  
  #Convert the date and time
  FDS$DateTime <- strptime(paste(FDS$Date, FDS$Time), "%d/%m/%Y %H:%M:%S")
  
  return(FDS)
  
}

