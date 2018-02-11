# Basics of R

a <- 5 # crtl + enter 
a
a = 6
a
b <- "this is string"
b

class(a)
class(b)

#simple calculator
5*3   
4+3

# '<-' and '=' both operators perform same
x <- 3
y = 4
x+y

#.....combination values 
a=c(2,3,4)
mean(a)

A <- c("1","2","3","4","5")
A
class(A)


d <- c(1,2,"g")
class(d)

# character > numeric > logical  T=1 and F=0
h <- c( T, FALSE, 7,8, "Shweta")
class(h)


#.....Sequence of series
##generates the integers from 1 to 10
x1 <- 1:10
x1

#sequence ...
x2 <- seq(from =1, to = 20, by = 2)
x2 
seq(1,12,1)

x3  <- seq(from =12, to = 20, length = 3)
x3

# repeat the number 3, 5 times
rep(3,5)


#length of vector
length(A)


# R uses NA to represent missing value
x=c(2,1,NA,3)
sum(x)

#calculate exluding NA
sum(x, na.rm=T)

# to get help of sum function
help(sum)
?sum


#lists of objects available in current workspace
ls()

#remove object
rm(a)


#install package
install.packages("caret")
#remove package
remove.packages("caret")

#use installed package (load package)
library(caret) 
#unload library
detach(caret)


#Import CSV File to R

oj <- read.csv("C:/Users/shwetag/Downloads/oj.csv",header=TRUE)
oj

#save data in csv formate (export csv file)
write.csv(oj, "file1.csv")
#to check working directory (where this data is save)
getwd()


#mathematical functions
x=c(3,4,7,9,2,5,8)
log(x)
exp(x)
sqrt(x)
median(x)
mean(x)


plot(log(x))
plot(log(x), type = "l")
plot(log(x), type = "p")

plot(sqrt(x), type = "l")

plot(exp(x), type = "l")
plot(exp(w), type = "l", xlim = c(0,15), ylim = c(10,1000))

#....Data types in R

# vector-------------

#integer
x <- 1:10
x
class(x)

#character
a <- c("apple","apple" ,"mango", "orange")
a[4]
class(a)

mean(x)    #calculate mean
table(a)   #calculate frequency 

sum(x[c(3,5)])  # sum of 3rd and 5th number

#Convert a column "x" to numeric 
x = as.numeric(x) 
class(x)

# factor --------------------------
f <- rep(c(1,2,3),4)
f
class(f)

f <- as.factor(f)
class(f)

levels(f)
table(f)


#matrices--------------
c <- matrix(1:20, nrow = 4, ncol = 5,byrow = FALSE)
c

a=matrix(c(2,3,6,4),2,2)
a
class(a)

x1=c(1,2,3)
x2=c(4,5,6)
x3=c(7,8,9)
M=cbind(x1,x2,x3)
M

#operations on matrix
t(a)             #t(M) means tranpose 
mult = a %*% t(a)   #multiplication
mult
add=M + M         #addition
add

dim(M)    #dimensions of matrix

# Arrays -----------------
3*3*2
e <- array(1:10, dim = c(3,3,2))  #[row, column, mutiple]
e


# list ----------------------
b <- list(id=c(1,2,3), name =c("a","b", "c", "d") , level = c(T,F,T,T,T))
b[[1]]
b[[2]]
b[1]
b

b$id
b$name
b["id"]


# data frame -------------------------

var1 = c("a","b","c")
var2 = c(1:3)
var3 = c(1999:2001)
var4 = c(T,T,F)

mydata <- data.frame(var1,var2,var3,var4)
mydata

#Operations on data

View(mydata)

mean(mydata$var2)

min(mydata$var3)

sqrt(mydata$var3)
hist(mydata$var2)

#..data slicing
#mydata[row,column]

mydata[2,3]
mydata[,c(2,3)]
mydata[1:2,]




