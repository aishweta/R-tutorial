#Data Manupulation

#create random numbers and letters 
s=sample(1:5, 10, replace=T)
s
letters[1:4]
LETTERS[1:8]

#create sample data
a = sample(1:6, 10, replace = TRUE)
b = sample(letters[1:4] , 10, replace = TRUE)
Age = sample(1:3, 10, replace = TRUE)
mydata = data.frame(a,b,Age)
mydata


#import data 
oj <- read.csv("C:/Users/shwetag/Downloads/oj.csv", header = TRUE)
class(oj)

#view data
View(oj)

#Dimensions in our data (no. of rows and col) 
dim(oj)

#To tell r which data set is to use
attach(oj)

#Lists name of variables in a dataset 
names(oj)

#Calculate number of rows in a dataset
nrow(oj)
#Calculate number of columns in a dataset
ncol(oj)

#List structure of a dataset
str(mydata)

head(oj)        # first 6 observations
head(oj, n=3)   # first n rows

tail(oj)        #last 6 rows
tail(oj, 3)     #last n rows 

#Calculate basic descriptive statistics
summary(oj)

#Select random rows from a dataset
library(dplyr)
sample_n(oj, 5)

#...............missing value count
#Number of missing values
colSums(is.na(oj))
#anather way
sapply(oj, function(y) sum(is.na(y)))

#Number of missing values in a single variable 
sum(is.na(oj$feat))


#............Data slicing..........................
oj[1,5]                 #oj[ row, column]

oj[2780, 7]             #oj[ row, column]

oj[230,]                #230th   row

oj[,3]                  #3rd column

oj[c(1,13,14,89,861), c(1,2,3,4) ]

oj[c(1:5), "brand"]

oj[c(1:5), "week"]

#Deleting a particular column (Fifth column)
df1=oj[-5] 

#Dropping multiple variables by their names
df2= subset(oj, select = -c(CPWVOL5,WORKWOM) )

#names colname

names(oj)

colnames(oj)

colnames(oj)[10]

colnames(oj)[c(1,4,7,10)]

oj[,"brand"]
oj[,2]


class(oj$brand)
oj$brand <- as.factor(oj$brand)

levels(oj$brand)
table(oj$brand)



#..........Data selection.........
#SQL query in R
# select * from oj where brand = "tropicana"
data1 <- oj[oj$brand=="tropicana",] #row subsetting
data1

length(data1$brand)

a=table(oj$week)
a
barplot(a)


# select * from oj where brand = "tropicana" and week=90

data2 <- oj[oj$brand=="tropicana" & oj$week==90,]
data2

# select * from oj where brand = "tropicana" or week=90

data3 <- oj[oj$brand=="tropicana" | oj$week==90,]

# select * from oj where brand = "dominicks"
index <- which(oj$brand=="dominicks") # passes the row number
head(index, 12)
oj[index,]          # oj[oj$brand=="dominicks",]

#(A or B) & c -> 
d2 <- oj[(oj$brand == "dominicks" | oj$brand == "minute.maid") & oj$feat == 0,]


#---------subset-----------
# select store week from oj where brand = "dominicks"

dat11 <- subset(oj,oj$brand=="dominicks", select = c("store", "week"))
dim(dat11)
colnames(dat11)

dat4 <- oj[c(67:80), c("brand", "week")]
dat4

colnames(oj) == "price"
which(names(oj) == "price")

dat5 <- oj[c(67:70),  -c(1,2,3)]
dat5

str(oj)
# creating a vector or adding a variable in the dataset
oj$price.100 <- oj$price*100

colnames(oj)
View(oj)

#............sorting data

#sort a vector
no <- c(8,9,80,-4,-5,10) 

no[order(no)]         #ascending
no[order(-no)]        #descending

#sort perticular variable in the data
order(oj$price,decreasing = TRUE)

#sort data by a perticular variable
dat41 <- oj[order(oj$INCOME,decreasing = TRUE),]
head(dat41$INCOME, 30)
head(dat41)

#.....Aggrigate the data 
agg <- aggregate(oj$price, by = list(oj$week, oj$brand), FUN = sum)
agg




#....combine data 
df1 <- data.frame(cust_id = c(1,2,3,4,5,6,7,8,9,10),
                  Product = c("TV","Fridge","fan",
                              "TV","Fridge","fan",
                              "TV","Fridge","fan", "TV"))
df2 <- data.frame(cust_id = c(1,3,4,5,6,7,8,9,11),
                   state = c("WB","Karnataka","TN","HP","JK","Gujrat","AP","Assam","Bihar"))

merge(x=df1,y=df2,by = "cust_id", all = TRUE) #outerjoin
merge(x=df1,y=df2,by = "cust_id", all.x  = TRUE) #left join
merge(x=df1,y=df2,by = "cust_id", all.y  = TRUE) #right join
merge(x=df1,y=df2,by = "cust_id") #inner join



