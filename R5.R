

#......Data Visualization with --base R-- --ggplo2-- --lattice--


#import data 
oj <- read.csv("C:/Users/shwetag/Downloads/oj.csv", header = TRUE)
str(oj)

#histrogram
hist(oj$price)    

hist(oj$price, col=c("red", "green", "blue"))


#...Line chart
x=c(2,3,5,4,6,4,8,3,7,8,0,3,2,6,9)
plot(x, type="l")       #Simple Line Plot

plot(oj$price,type="l")

#....bar plot
iris
barplot(iris$Petal.Length) #Creating simple Bar Graph
barplot(iris$Petal.Length, col=("red"))


#boxplot
boxplot(iris$Petal.Length~iris$Species) #Creating Box Plot between two variable

data(iris)
par(mfrow=c(2,2))  #display multiple graphs on same graphics window
boxplot(iris$Sepal.Length,col="red")
boxplot(iris$Sepal.Length~iris$Species,col="red")
boxplot(iris$Sepal.Length~iris$Species,col=heat.colors(3))


#Scatter plot

plot(x=iris$Petal.Length) #Simple Scatter Plot

plot(x=iris$Petal.Length,y=iris$Species) #Multivariate Scatter Plot


#pie chart
pie(table(iris$Species))

# correlation plot
install.packages("corrplot")
library(corr)

m<-cor(iris[,-5])  #corr of numeriacal variables
corrplot(m,method="number",type<-"lower")

#ggplot
#scatter plot
install.packages("ggplot2")
library(ggplot2) 
ggplot(iris, aes(Sepal.Length, Petal.Length )) +
geom_point() + scale_x_continuous("Sepal.Length", breaks = seq(0,0.35,0.05))+ scale_y_continuous("Petal.Length", breaks = seq(0,270,by = 30))+ theme_bw() 

#kernel density plot for mpg
data(mtcars)
qplot(mpg, data=mtcars, geom="density", fill=gear, alpha=I(.5), 
      main="Distribution of Gas Milage", xlab="Miles Per Gallon", 
      ylab="Density")



#Separate regressions of mpg on weight for each number of cylinders
qplot(wt, mpg, data=mtcars, geom=c("point", "smooth"), 
      method="lm", formula=y~x, color=cyl, 
      main="Regression of MPG on Weight", 
      xlab="Weight", ylab="Miles per Gallon")

#Boxplots of mpg by number of gears 
qplot(gear, mpg, data=mtcars, geom=c("boxplot", "jitter"), 
      fill=gear, main="Mileage by Gear Number",
      xlab="", ylab="Miles per Gallon")



#Bar chart example
c <- ggplot(mtcars, aes(factor(cyl)))
c + geom_bar()    #default plotting
c + geom_bar(fill = "red")  #change interior colour
c + geom_bar(colour = "red")  #changes just the bar outline
c + geom_bar(fill = "blue", colour = "red")  #do the both

#size changes
p <- ggplot(mtcars, aes(wt, mpg))
p + geom_point(size = 4)
p + geom_point(aes(size = qsec))
p + geom_point(size = 2.5) + geom_hline(yintercept = 25, size = 3.5)

#shape
p + geom_point()
p + geom_point(shape = 5)
p + geom_point(shape = "k", size = 3)
p + geom_point(shape = ".")
p + geom_point(aes(shape = factor(cyl)))


#facet grid
p <- ggplot(mtcars, aes(mpg, wt)) + geom_point() + facet_grid(. ~ cyl)




#plottins with lattice
install.packages("lattice")
library(lattice)
attach(mtcars)
#create factors with value labels 
gear.f<-factor(gear,levels=c(3,4,5),
               labels=c("3gears","4gears","5gears")) 
cyl.f <-factor(cyl,levels=c(4,6,8),
               labels=c("4cyl","6cyl","8cyl")) 

#Kernel density plot
densityplot(~mpg, 
            main="Density Plot", 
            xlab="Miles per Gallon")

#Kernel density plots by factor level 
densityplot(~mpg|cyl.f, 
            main="Density Plot by Number of Cylinders",
            xlab="Miles per Gallon")

#Boxplots for each combination of two factors 
bwplot(cyl.f~mpg|gear.f,
       ylab="Cylinders", xlab="Miles per Gallon", 
       main="Mileage by Cylinders and Gears", 
       layout=(c(1,3)))


#Scatterplots for each combination of two factors 
xyplot(mpg~wt|cyl.f*gear.f, 
       main="Scatterplots by Cylinders and Gears", 
       ylab="Miles per Gallon", xlab="Car Weight")

# 3D sctter plot
cloud(mpg~wt*qsec|cyl.f, 
      main="3D Scatterplot by Cylinders")

#Dotplot for each combination of two factors 
dotplot(cyl.f~mpg|gear.f, 
        main="Dotplot Plot by Number of Gears and Cylinders",
        xlab="Miles Per Gallon")

#scatter plot matrix
splom(mtcars[c(1,3,4,5,6)],
      main="MTCARS Data")
