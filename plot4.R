png("plot4.png")
par(mfrow=c(2,2))

plot(ds$Time,ds$Global_active_power,type="l",main="",
     ylab="Global Active Power (kilowatts",xlab="")

plot(ds$Time,ds$Voltage,type="l",ylab="Voltage",xlab="datatime")

plot(ds$Time,ds$Sub_metering_1,type="l",main="",xlab="",ylim=c(0,max(ds$Sub_metering_1)),ylab="Energy sub metering")
lines(ds$Time,ds$Sub_metering_2,col="red")
lines(ds$Time,ds$Sub_metering_3,col="blue")
legend(max(ds$Time)-104500,max(ds$Sub_metering_1)+1.5,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black", "red", "blue"),text.col = "black", lty = c(1, 1, 1), pch = c(NA, NA, NA),
       merge = TRUE,bty="n",cex=0.9)
plot(ds$Time,ds$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datatime")
par(mfrow=c(1,1))
dev.off()
