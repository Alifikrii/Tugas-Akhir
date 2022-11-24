dataCitra <- read.csv(file='multispectralData_process.csv')
library(RColorBrewer)

summary(dataCitra$Label)
dataCitra$Label[dataCitra$Label==" "] <- 0
dataCitra$Label[dataCitra$Label=="?"] <- 0
coul <- brewer.pal(5, "Set2") 
barplot(table(dataCitra$Label), main='Perbandingan Jumlah Data berdasarkan Label', col = '#E48A33', border='#E48A33')
library("plotly") 

plot_ly(y = table(dataCitra$Label),type = "bar")
plot(dataCitra)
table(dataCitra$Label)


# Plot and color by groups cyl
grps <- as.factor(dataCitra$Label)
my_cols <- c("blue", "darkgreen", "orange","red")
dotchart(dataCitra$No, labels = row.names(dataCitra),
         groups = grps, gcolor = my_cols,
         color = my_cols[grps],
         cex = 0.9,  pch = 22, xlab = "Apaalah")
