#Set the working directory 

setwd("D:/DataScience/Exploratory Data Analysis/Project 1/exdata_data_household_power_consumption")

source("load_data.R")

plot4 <- function(data = NULL){
  if(is.null(data))
    data <- load_data()
  
  #Open png device 
  png("plot4.png",width=480,height=480)
  
  #set the output for 2 rows and 2 columns
  par(mfrow=c(2,2))
  
  #Plot1 graph
  plot(data$DateTime, data$Global_active_power,
       type = "l",
       ylab = "Global Active Power",
       xlab = "")
  
  #Plot2 graph
  plot(data$DateTime, data$Voltage,
       type = "l",
       ylab = "Voltage",
       xlab = "datetime")
  
  #Plot3 graph
  plot(data$DateTime, 
       data$Sub_metering_1,
       type = "l",
       col = "black",
       ylab = "Energy sub metering",
       xlab = "")
  
  #Plot3 lines
  lines(data$DateTime, data$Sub_metering_2, col = "red")
  lines(data$DateTime, data$Sub_metering_3, col = "blue")
  
  #Plot3 Legend
  legend("topright",
         col=c("black","red","blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         box.lwd=0)
  
  #Plot4 graph
  plot(data$DateTime, data$Global_reactive_power,
       type = "n",
       ylab = "Global_reactive_power",
       xlab = "datetime")
  #Plot4 lines
  lines(data$DateTime, data$Global_reactive_power)
  
  #Turn off device
  dev.off()
  
}