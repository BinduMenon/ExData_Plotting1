#Set the working directory 

setwd("D:/DataScience/Exploratory Data Analysis/Project 1/exdata_data_household_power_consumption")

source("load_data.R")

plot2 <- function(data = NULL){

  if(is.null(data))
    data <- load_data()

  #Open png device 
  png("plot2.png",width=480,height=480)
  
  #plot the graph
  plot(data$DateTime, data$Global_active_power,
       type = "l",
       ylab = "Global Active Power (kilowatts)",
       xlab = "")
  
  #Turn off device
  dev.off()
  
}