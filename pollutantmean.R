pollutantmean <- function(directory, pollutant, id = 1:332){
    airdf <- data.frame()
    for (i in id) {
        airdf <- rbind(airdf, read.csv(airquality[i]))
    }
    if("sulfate" == pollutant) {
        mean(airdf$sulfate, na.rm=TRUE)
    } else if("nitrate" == pollutant) {
        mean(airdf$nitrate, na.rm=TRUE)
    }
}  
