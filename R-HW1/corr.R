corr <- function(directory, threshold = 0) {
    data <- c()
    for (i in 1:332) {
        x <- read.csv(paste(directory,"/",sprintf('%03d',i),'.csv',sep = ''),header = T)
        if (sum(!is.na(x[,2]) & !is.na(x[,3])) >= threshold) {
            data <- rbind(data,cor(x[!is.na(x[,2]) & !is.na(x[,3]),2],x[!is.na(x[,2]) & !is.na(x[,3]),3]))
        } 
    }
    as.vector(data)
}

