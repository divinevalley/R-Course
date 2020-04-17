getwd()
setwd("C:\\Users\\Deanna\\Documents\\R_Programming_Course")
moviesData <-read.csv("Section6-Homework-Data.csv")

head(moviesData)
summary(moviesData)
nrow(moviesData) #608 lines

#select for genres we're interested in
moviesDataSubset <- moviesData[moviesData$Genre=="action" | 
                                 moviesData$Genre=="animation" | 
                                 moviesData$Genre=="comedy" | 
                                 moviesData$Genre=="drama" | 
                                 moviesData$Genre=="adventure", ]

nrow(moviesDataSubset)  #526 lines 
summary(moviesDataSubset)

#select for studios we're interested in
moviesSubsetStudios <- moviesDataSubset[moviesDataSubset$Studio=="Buena Vista Studios" | 
                   moviesDataSubset$Studio=="WB" | 
                   moviesDataSubset$Studio=="Fox" | 
                   moviesDataSubset$Studio=="Universal" | 
                   moviesDataSubset$Studio=="Sony" | 
                   moviesDataSubset$Studio=="Paramount Pictures" , ]

nrow(moviesSubsetStudios) #423 lines
summary(moviesSubsetStudios)


library(ggplot2)

#store data 
grossUS <- ggplot(data = moviesSubsetStudios, aes(x = Genre, y = Gross...US))

#boxplots 
grossUS + geom_boxplot()

grossUS + geom_boxplot() + geom_jitter()

myplot<- grossUS + geom_jitter(aes(color=Studio, size=Budget...mill.))  +
  geom_boxplot(alpha=0.5) + 
  scale_size_continuous(range = c(1, 3))  #decr size of dots

#add title, axes, etc. 
finalPlot<-myplot + xlab("Genre") + ylab("Gross%US") + 
  ggtitle("Domestic Gross % by Genre") + 
  #change label for size 
  labs(size="Budget $M") + 
  theme(axis.title.x = element_text(color="Blue", size=14), 
        axis.title.y = element_text(color="Blue", size=14),
        plot.title = element_text(size=18,hjust = 0.5),
        text=element_text(family="Century Gothic")
        )

finalPlot

?labs()
windowsFonts()
font_import()
loadfonts(device = "win")

