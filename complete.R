complete <- function(directory, id = 1:332) {
    airdf <- data.frame()
    nobs <- c()
    for (i in id) {
        airdf <- rbind(complete.cases(read.csv(airquality[i])))
        nobs <- c(nobs, sum(airdf))
    }    
    data.frame(id, nobs)
}

