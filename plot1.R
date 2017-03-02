## Plot 1 Script

hpc <- read.table("HPC_2007_2.txt", sep = ";", header = T, stringsAsFactors = F)
hist(as.numeric(hpc$Global_active_power), col="red", xlab = "Global Active Power (killowatts)", main = "Global Active Power")
dev.copy(png, file="plot1.png", height=480, width=480 )
dev.off()
