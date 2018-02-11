
#--------------------------R naming convention-----------
# var_name2.           valid Has letters, numbers, dot and underscore
# var_name%             Invalid   Has the character '%'. Only dot(.) and underscore allowed.
# 2var_name             invalid Starts with a number
# .var_name , var.name  valid Can start with a dot(.) but the dot(.)should not be 
#followed by a number.
# .2var_name       invalid    The starting dot is followed by a number making it invalid
# _var_name             invalid Starts with _ which is not valid

#---------Operators in R---------------

# arithmetic relational logical conditional ..

v <- c( 2,5.5,4)
t <- c(8, 3, 4)

v+t

v-t

v*t

v/t

v%%t # remainder function 

v^t

#----- logical ------
v>t

v<t

v==t

v<=t 

v>=t

v!=t

a<- c(0,0,T,3+4i) # last element complex ...

######
x <- 12
y <- 9

k <- 5:10

x %in% k
y %in% k


##############################################
#------if else conditions ------------
# 
# if(boolean_expression) {
#   // statement(s) will execute if the boolean expression is true.
# }

#....if statement
a <-"z"
if(is.character(a))
{
  "a is not a numeric"
}

#....if-else statement
# if(boolean_expression) {
#   // statement(s) will execute if the boolean expression is true.
# } else {
#   // statement(s) will execute if the boolean expression is false.
# }

if(is.character(a))
{
  "a is not a numeric"
}else{
  "a is numeric"
}


#ifelse--------
ifelse(is.numeric("a"),1,ifelse(is.character(a),"is a character",0))


#----switch statement ----

x <- switch(
  4,
  "first",
  "second",
  "third",
  "fourth"
)
x

#switch( expression, case1, case2, .....)

#------ for loop---------------
for(i in 1:4)
{
  x<- switch(i,"first",
             "second",
             "third",
             "fourth")
  print(x)
}



#-----------------------loop and its working----------------
# 
# while (test_expression) {
#   statement
# }

v <- c("Hello","while loop")
cnt <- 2
while (cnt < 7){
  print(v)
  cnt = cnt + 1
}

#################################################
# function_name <- function(arg_1, arg_2, ...) {
#   Function body
# }

new.function <- function(a) {
  for(i in 1:a) {
    b <- i^2
    print(b)
  }
}

new.function(6)

# Create a function without an argument.
new.function <- function() {
  for(i in 1:5) {
    print(i^2)
  }
}
# Call the function without supplying an argument.
new.function()

new.function <- function(a,b,c) {
  result <- a*b+c
  print(result)
}

new.function(5,3,11)

new.function(a=11,b=5,c=3)

# Create a function with arguments.
new.function <- function(a = 3,b =6) {
  result <- a*b
  print(result)
}
# Call the function without giving any argument.
new.function()
# Call the function with giving new values of the argument.
new.function(9,5)


