png("plot3.png")
plot(ds$Time,ds$Sub_metering_1,type="l",main="",xlab="",ylim=c(0,max(ds$Sub_metering_1)),ylab="Energy sub metering")
lines(ds$Time,ds$Sub_metering_2,col="red")
lines(ds$Time,ds$Sub_metering_3,col="blue")
legend(max(ds$Time)-56500,max(ds$Sub_metering_1)+1.5,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black", "red", "blue"),text.col = "black", lty = c(1, 1, 1), pch = c(NA, NA, NA),
       merge = TRUE)
dev.off()
