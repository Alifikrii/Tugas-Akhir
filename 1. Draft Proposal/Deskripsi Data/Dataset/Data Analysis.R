dataCitra <- read.csv(file='multispectralData_process.csv')

barplot(dataCitra$Label)
summary(dataCitra$Label)
dataCitra[dataCitra$Label=="?"] <- 0
