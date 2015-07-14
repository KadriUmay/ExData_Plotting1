##Load the DataSet 
if (!grepl("/EDA$",getwd()))
{
  setwd(".\\EDA")
}
filename <- "./household_power_consumption.txt" 
data <- read.table(filename, 
                                         header = TRUE, 
                                         sep = ";", 
                                         na = "?") 
data<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
DateTime<-paste(data$Date," ",data$Time)
data$DateTime<-strptime(DateTime,"%d/%m/%Y %H:%M:%S") #add a col with DateTime type
