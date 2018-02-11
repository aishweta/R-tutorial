#random number generation
#uniform distribution
x=runif(10,0,1)
x

#normal distribution
a=rnorm(10,4,5)
a

#binomial distribution
b=rbinom(10,5,.6)
b

#create dummy data

mydata = data.frame(State = ifelse(sign(rnorm(25))==-1,'Delhi','Goa'), Q1= sample(1:25))
mydata

#replacing 1 with 6 in Q1 variable
mydata$Q1[mydata$Q1==1] <- 6


#replacing "Delhi" with "Mumbai" in State variable.
class(mydata$State)
mydata$State = as.character(mydata$State)

mydata$State[mydata$State=='Delhi'] <- 'Mumbai'


#replacing 2 and 3 with NA values in whole dataset.
mydata[mydata == 2 | mydata == 3] <- NA

#anather approch
# Install the car package
install.packages("car")

# Load the car package
library("car")

# Recode 1 to 6
mydata$Q1 <- recode(mydata$Q1, "1=6")


samples = data.frame(x =c(rep(1:10)), y=letters[1:10])


#Renaming variables
# Load the plyr package
library(dplyr)

# Rename Q1 variable to var1
mydata <- rename(mydata, var1 = Q1)



#Value labeling
mydata1 = data.frame(Gender = ifelse(sign(rnorm(25))==-1,'F','M'), SAT= sample(1:25))
#ort data
mydata1.sorted <- mydata1[order(mydata1$Gender),]

mydata1$Gender <- factor(mydata1$Gender, levels = c(1,2), labels = c("male", "female"))



#Dealing with missing data

#Number of missing values in a variable
colSums(is.na(mydata1))

#List rows of data that have missing values
mydata[!complete.cases(mydata),]

#Convert a value to missing
mydata[mydata$Q1==999,"Q1"] <- NA 



#Removing Duplicates
data = read.table(text="X Y Z
                  6 5 0
                  6 5 0
                  6 1 5
                  8 5 3
                  1 NA 1
                  8 7 2
                  2 0 2", header=TRUE)
data

#removing duplicates in a whole data set
mydata2 <- unique(data)

#removing duplicates by "Y" column
mydata3 <- subset(data, !duplicated(data[,"Y"]))


#Combining Columns and Rows
#combine the rows
A=c(3,4,5,6,7)
B=c(1,2,3,4,5)
newdata<- cbind(A, B)

#combine the rows
newdata2<- rbind(A, B)


#transpose data in R

data <- read.table(text="X Y    Z
                   ID12   2012-06    566
                   ID1    2012-06  10239
                   ID6    2012-06    524
                   ID12   2012-07   2360
                   ID1    2012-07   13853
                   ID6    2012-07    2352
                   ID12   2012-08   3950
                   ID1    2012-08   14738
                   ID6    2012-08   4104",header=TRUE)
data

#Convert Long to Wide Format
install.packages('reshape2')
library(reshape2)

mydt = dcast(data,X~Y,value.var = "Z")


#more than one id variable
xx=dcast(data, X1 + X2 ~ Y,  value.var = "Z")

#Convert Wide Format Data to Long Format
library(reshape2)

mydata = read.table(text= "ID setosa versicolor virginica
                    1 5.1 NA NA
                    2 4.9 NA NA
                    3 NA 7 NA
                    4 NA 6.4 NA
                    5 NA NA 6.3
                    6 NA NA 5.8
                    ", header=TRUE)
mydata
x = colnames(mydata[,-1])
t = melt(mydata,id.vars = "ID",measure.vars = x , variable.name="Species", value.name="Sepal.Length",na.rm = TRUE)


#DELETING COLUMNS WHERE CERTAIN % OF MISSING VALUES

final <- t[, colMeans(is.na(t)) <= .5]


#CREATE DUMMY COLUMNS FROM CATEGORICAL VARIABLE

DF <- data.frame(strcol = c("A", "A", "B", "C","C", "D"))
for(level in unique(DF$strcol)){
DF[paste("strcol", level, sep = "_")] <- ifelse(DF$strcol == level, 1, 0)}


