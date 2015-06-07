##plot2

png(filename='plot2.png')

fdata<-read.table('household_power_consumption.txt', header=TRUE, sep=';',
                  colClasses='character')
fdata$Date<-strptime(fdata$Date, format='%d/%m/%Y')
data<-subset(fdata,Date=='2007-02-01'|Date=='2007-02-02')
data$Timestamp <- paste(data$Date, data$Time)
data$Timestamp <- strptime(data$Timestamp, format='%Y-%m-%d %H:%M:%S')

plot(data$Timestamp, data$Global_active_power, type='l', xlab='', 
     ylab='Global Active Power(kilowatts)')

dev.off()