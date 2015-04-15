plot1 <- function() (
  file <- read.csv2("household_power_consumption.txt", header = TRUE, dec = ".", stringsAsFactors=FALSE)
  
  data <- filter(file, Date == "01/02/2007" | Date == "02/02/2007")
  
  hist(as.numeric(data$Global_active_power), col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", ylim = c(0, 1200), xlim = c(0,6))
  
  dev.copy(png, file = "plot1.png")
  dev.off()
  )