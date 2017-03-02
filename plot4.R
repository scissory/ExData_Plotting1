## Plot 4 Script

hpc <- read.table("HPC_2007_2.txt", sep = ";", header = T, stringsAsFactors = F)
dow <- as.POSIXct(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")
names(dow) <- "dow"
hpc <- cbind(hpc,  dow)

par(mfrow = c(2,2))
par(mar = c(4, 4, 2, 1))
with(hpc, {

        plot(x=dow, y=Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
        plot(x=dow, y=Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
        plot(x=dow, y=Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub Metering")
        lines(dow, Sub_metering_1, col="grey")
        lines(dow, Sub_metering_2, col="red")
        lines(dow, Sub_metering_3, col="blue")
        legend("topright", cex=.6,  col=c("grey","red","blue"), lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),bty = "n"   )
        plot(x=dow, y=Global_reactive_power, type = "s", xlab = "datetime", ylab = "Global_reactive_power")
        
}
)



dev.copy(png, file="plot4.png", height=480, width=480 )
dev.off()