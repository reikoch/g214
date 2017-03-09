# coordinates of Giornicostr 214

library(ggplot2)

lv95 <- read.csv('g214koords.csv', header = FALSE)
names(lv95) <- c('E','N')
row.names(lv95) <- c('A','B','H','C','D','E','G','F')

p <- ggplot(lv95, aes(E, N, label=row.names(lv95)))
p+geom_label(hjust=0, vjust = 0) + geom_point()


dd <- dist(lv95)
