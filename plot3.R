#Set the working directory 

setwd("D:/DataScience/Exploratory Data Analysis/Project 1/exdata_data_household_power_consumption")

source("load_data.R")

plot3 <- function(data = NULL){
  if(is.null(data))
    data <- load_data()
  
  #Open png device 
  png("plot3.png",width=480,height=480)
  
  #plot the graph
  plot(data$DateTime, 
       data$Sub_metering_1,
       type = "l",
       col = "black",
       ylab = "Energy sub metering",
       xlab = "")
  
  #Plot the lines
  lines(data$DateTime, data$Sub_metering_2, col = "red")
  lines(data$DateTime, data$Sub_metering_3, col = "blue")
  
  #Display Legend
  legend("topright",
         col=c("black","red","blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  
  #Turn off device
  dev.off()
  
}