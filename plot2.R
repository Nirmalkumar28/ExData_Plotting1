## Programming Assignment Week 1 for Nirmal Kumar , Course is EDA plot2.R

rawdata <- "C:\\temp\\DATA SCIENTIST\\Exploratory Data Analysis\\household_power_consumption.txt"
data <- read.table(rawdata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
filterdata <- data[data$Date %in% c("1/2/2007","2/2/2007") , ]

## dim(data) shows [1] 2075259       9dd 
## names(data) shows all columns

datetime11 <- strptime(paste(filterdata$Date, filterdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gap <- as.numeric(filterdata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime11, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
