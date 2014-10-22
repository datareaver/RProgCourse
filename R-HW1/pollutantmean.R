pollutantmean <- function(directory,pollutant, id = 1:332) {
    data <- c()
    for (i in id) {
        x <- read.csv(paste(directory,"/",sprintf('%03d',i),'.csv',sep = ''),header = T)
        data <- rbind(data,x)
    }
    mean(data[,pollutant],na.rm = T)
}