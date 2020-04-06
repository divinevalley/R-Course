head(stats)
filter<-stats$Internet.users <2
stats[filter,]


stats[stats$Birth.rate>40 & stats$Internet.users<2,]
stats[stats$Income.Group=="High income",]
levels(stats$Income.Group)

stats[stats$Country.Name=="Malta",]


# --------------- q plot 
library(ggplot2)
?qplot
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate)
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3)) #remember to put I() for sizes so R doesn't map the values
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3), color=I("blue"))
qplot(data=stats, x=Income.Group, y=Birth.rate, geom="boxplot")


# ----------------- visualizing what we need
qplot(data=stats, x=Internet.users, y=Birth.rate)
qplot(data=stats, x=Internet.users, y=Birth.rate, size = I(4))
qplot(data=stats, x=Internet.users, y=Birth.rate, size = I(4), color=I("red"))
qplot(data=stats, x=Internet.users, y=Birth.rate, size = I(4), color=Income.Group)


#------------------creating data frames
mydf <-data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
#data.frame() is kind of like the cbind function, but for data frames 
head(mydf)
colnames(mydf) <- c("Country", "Code", "Region")
head(mydf)
rm(mydf)

#recreate dataframe and name them 
mydf <-data.frame(Country=Countries_2012_Dataset, 
                  Code=Codes_2012_Dataset, Region=Regions_2012_Dataset)
head(mydf)
summary(mydf)


#-------------------merging data frames
head(stats)
head(mydf)

merged<-merge(stats, mydf, by.x = "Country.Code", by.y = "Code")
head(merged)

merged$Country<-NULL
str(merged)
head(merged)

?merge()


#------------------------Visualizing by regions
#shape
qplot(data=merged, x=Internet.users, y=Birth.rate, size=I(2), color=Region, shape=I(23))

#transparency
qplot(data=merged, x=Internet.users, y=Birth.rate, size=I(2), color=Region, 
      alpha=I(0.8))
#title 
qplot(data=merged, x=Internet.users, y=Birth.rate, size=I(2), color=Region, 
      alpha=I(0.8), main="Birth Rate vs Internet Users")
