alldata<-read.table("household_power_consumption.txt",sep=";",na.strings="?",header=TRUE,nrow=2880)
c.date<-alldata[,1]
c.time<-alldata[,2]

date<-as.Date(c.date,"%d/%m/%Y")
c.date<-date
time<-paste(c.date,c.time)
as.character(time)
alldata$Date<-strptime(time,format="%Y-%m-%d %H:%M:%S")

plot(alldata$Date,alldata$Global_active_power,col="transparent",ylab="Global Active Power (kilowatts)",xlab="")
lines(x=alldata$Date,y=alldata$Global_active_power,col="black")