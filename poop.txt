corr <- function(directory, threshold = 0) {
    corair <- vector()
    for(i in 1:332){
        airtemp <- (read.csv(airquality[i]))
        sumair <- sum(complete.cases(airtemp))  ##maybe no sum
            if(sumair > threshold){
                nitrate <- airtemp[,2]
                sulfate <- airtemp[,3]                                     
                corairtemp <- cor(nitrate, sulfate, use="complete.obs")
                corair <- c(corair, corairtemp)
            } 
    }
    corair
}
cr <- corr("specdata", 150)
head(cr)