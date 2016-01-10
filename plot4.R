## Programming Assignment Week 1 for Nirmal Kumar , Course is EDA plot4.R

rawdata <- "C:\\temp\\DATA SCIENTIST\\Exploratory Data Analysis\\household_power_consumption.txt"
data <- read.table(rawdata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
filterdata <- data[data$Date %in% c("1/2/2007","2/2/2007") , ]

## dim(data) shows [1] 2075259       9dd 
## names(data) shows all columns
## two rol two column and add previous graphs command thats it

datetime11 <- strptime(paste(filterdata$Date, filterdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sm1 <- as.numeric(filterdata$Sub_metering_1)
sm2 <-as.numeric(filterdata$Sub_metering_2)
sm3 <-  as.numeric(filterdata$Sub_metering_3)
gap <-  as.numeric(filterdata$Global_active_power)
vol <- as.numeric(filterdata$Voltage)
grap <- as.numeric(filterdata$Global_reactive_power)
  
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(datetime11, gap, type="l", xlab="", ylab="Global Active Power")
plot(datetime11, vol, type="l", xlab="datetime", ylab="Voltage")

plot(datetime11, sm1, type="l", xlab="", ylab="Energy sub metering")
lines(datetime11, sm2, type="l", col="red")
lines(datetime11, sm3, type="l", col="blue")
legend("topright", lty=1, lwd=2.5,col=c("black","blue","red"),legend=c("sub_metering_1","sub_metering_2","sub_metering_3"))

plot(datetime11, grap, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
