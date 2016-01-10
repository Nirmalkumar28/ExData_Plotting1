## Programming Assignment Week 1 for Nirmal Kumar , Course is EDA plot1.R

rawdata <- "C:\\temp\\DATA SCIENTIST\\Exploratory Data Analysis\\household_power_consumption.txt"
data <- read.table(rawdata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
filterdata <- data[data$Date %in% c("1/2/2007","2/2/2007") , ]

## dim(data) shows [1] 2075259       9
## names(data) shows all columns

gap <- as.numeric(filterdata$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()