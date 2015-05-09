alldata<-read.table("household_power_consumption.txt",sep=";",na.strings="?",header=TRUE,nrow=2880)
c.date<-alldata[,1]
c.time<-alldata[,2]

date<-as.Date(c.date,"%d/%m/%Y")
c.date<-date
time<-paste(c.date,c.time)
as.character(time)
alldata$Date<-strptime(time,format="%Y-%m-%d %H:%M:%S")
par(mfrow=c(2,2),mar=c(4,4,2,1),oma=c(0,0,2,0))
plot(alldata$Date,alldata$Global_active_power,col="transparent",ylab="Global Active Power (kilowatts)",xlab="")
lines(x=alldata$Date,y=alldata$Global_active_power)
plot(alldata$Date,alldata$Voltage,col="transparent",ylab="Voltage",xlab="datetime")
lines(x=alldata$Date,y=alldata$Voltage)
plot(alldata$Date,alldata$Sub_metering_1,col="transparent",ylab="Energy sub metering",xlab="")
lines(x=alldata$Date,y=alldata$Sub_metering_1,col="black")
points(alldata$Date,alldata$Sub_metering_2,col="transparent")
lines(x=alldata$Date,y=alldata$Sub_metering_2,col="red")
points(alldata$Date,alldata$Sub_metering_3,col="transparent")
lines(x=alldata$Date,y=alldata$Sub_metering_3,col="blue")
legend("topright",cex=0.5,lty=1,col=c("black", "red", "blue"),bty="n",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(alldata$Date,alldata$Global_reactive_power,col="transparent",ylab="Global_reactive_power",xlab="datetime")
lines(x=alldata$Date,y=alldata$Global_reactive_power)