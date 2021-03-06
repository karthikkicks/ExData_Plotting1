##Plot3

png(filename='plot3.png')

fdata<-read.table('household_power_consumption.txt', header=TRUE, sep=';',
                  colClasses='character')
fdata$Date<-strptime(fdata$Date, format='%d/%m/%Y')
data<-subset(fdata,Date=='2007-02-01'|Date=='2007-02-02')
data$Timestamp <- paste(data$Date, data$Time)
data$Timestamp <- strptime(data$Timestamp, format='%Y-%m-%d %H:%M:%S')

with(data, plot(Timestamp,Sub_metering_1, ylab='Energy sub metering', xlab='',
                type='l'))
with(data, lines(Timestamp, Sub_metering_2, col='red'))
with(data, lines(Timestamp, Sub_metering_3, col='blue'))
legend('topright',lty=1,col=c('black', 'red', 'blue'),legend=c('Sub_metering_1', 
                                                               'Sub_metering_2', 
                                                               'Sub_metering_3')
       ,cex=0.75)

dev.off()

