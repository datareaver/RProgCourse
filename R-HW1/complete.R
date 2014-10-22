complete <- function(directory,id = 1:332) {
    data <- c()
    for (i in id) {
        x <- read.csv(paste(directory,"/",sprintf('%03d',i),'.csv',sep = ''),header = T)
        data <- rbind(data,cbind(id = i,nobs = sum(!is.na(x[,2]) & !is.na(x[,3]))))
    }
    as.data.frame(data)
}