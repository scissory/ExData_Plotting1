## Plot 2 Script

hpc <- read.table("HPC_2007_2.txt", sep = ";", header = T, stringsAsFactors = F)
dow <- as.POSIXct(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")
names(dow) <- "dow"
hpc <- cbind(hpc,  dow)

with(hpc, plot(x=dow, y=Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))


dev.copy(png, file="plot2.png", height=480, width=480 )
dev.off()
