dataset_url <- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
download.file(dataset_url, "diet_data.zip")
unzip("diet_data.zip", exdir = "diet_data")
andy_start <- andy[1, "Weight"]
andy_end <- andy[30, "Weight"]
andy_loss <- andy_start - andy_end
andy_loss
files <- list.files("diet_data")
files
files[1]
files[3]
head(read.csv(files[3]))
files_full <- list.files("diet_data", full.names=TRUE)
head(read.csv(files_full[3]))
andy_david <- rbind(andy, read.csv(files_full[2]))
head(andy_david)
dim(andy_david)
tail(andy_david)
day25 <- andy_david[which(andy_david$Day == 25),]
day25
dat <- data.frame()
dat
median(dat$Weight, na.rm=TRUE)
dat_30 <- dat[which(dat[, "Day"] == 30),]
dat_30
median(dat_30$Weight)
weightmedian <- function(directory, day) {
    files_list <- list.files(directory, full.name=TRUE)
    dat <- data.frame()
    for (i in 1:5) {
        dat <- rbind(dat, read.csv(files_list[i]))
    }
    dat_subset <- dat[which(dat[,"Day"] == day),]
    median(dat_subset[,"Weight"], na.rm=TRUE)
}
weightmedian("diet_data", 20)



