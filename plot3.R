## Plot 3 Script

hpc <- read.table("HPC_2007_2.txt", sep = ";", header = T, stringsAsFactors = F)
dow <- as.POSIXct(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")
names(dow) <- "dow"
hpc <- cbind(hpc,  dow)

with(hpc, plot(x=dow, y=Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub Metering"))
with(hpc, lines(dow, Sub_metering_1, col="grey"))
with(hpc, lines(dow, Sub_metering_2, col="red"))
with(hpc, lines(dow, Sub_metering_3, col="blue"))
legend("topright", col=c("grey","red","blue"), lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") )

dev.copy(png, file="plot3.png", height=480, width=480 )
dev.off()

