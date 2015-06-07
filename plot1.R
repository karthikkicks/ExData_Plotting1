##Plot1

png(filename = 'plot1.png')

fdata<-read.table('household_power_consumption.txt', header=TRUE, sep=';',
                  colClasses='character')
fdata$Date<-strptime(fdata$Date, format='%d/%m/%Y')
data<-subset(fdata,Date=='2007-02-01'|Date=='2007-02-02')

hist(as.numeric(data$Global_active_power), main='Global Active Power', 
     xlab='Global Active Power (Kilowatts)', col='firebrick1')

dev.off()