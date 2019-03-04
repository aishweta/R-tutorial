
# Question 1
# (a)
v1 = c(2:7, -1:-4)
v1

# (b)
v2= 5:12
v2

# (c)
v3 = c('Hard work' , 'Practice',  'Perseverance', 'Success')
v3

# (d)
v4= c(rep(TRUE,2), rep(FALSE,2), rep(TRUE,4))
v4

# (d)
v5 = rep(1,5)
v5

# Question 2
# (a)
length(v4)

# (b)
length(v5)

# (c)
sum(v1)

# (d)
range(v1)

# (e)
v6 = c(v2, v5, -1)
v6

# (f)
length(v6)

# (g)
v1[8]*v2[4]

# (h)
v1[8]/v2[4]

# (i)
v7 = v2[2:3]
v7

# (j)
v8 <- v2[4:8]
v8

# (k)
v9 <- v6[6:10]
v9

# (l)
v8 * v9

# Question 3
vnum <- c( -11, 0, 45, 22:25, -6:-2, -1, 11)
vnum

vchar <- c('dollars', 'rupees', 'pound', 'naira', 'dinar', 'sol' )
vchar

# (a)
?sort()   # help ?

""" 
Sort (or order) a vector or factor (partially) into ascending or descending order. 
For ordering along more than one variable, e.g., for sorting data frames, see order.
Usage:
sort(x, decreasing = FALSE, ...)

## Default S3 method:
sort(x, decreasing = FALSE, na.last = NA, ...)
"""

# (b)
sort(vnum, decreasing = FALSE)
sort(vchar, decreasing = FALSE)

# (c)
sort(vnum, decreasing = TRUE)
sort(vchar, decreasing = TRUE)


# Question 4
# (a) 
matSq = matrix(1:9, nrow=3, ncol=3)

# (b) 
matSq

#(c())
# (i)
matSq[2, 3]
#(ii)
matSq[1,]
#(iii)
matSq[,3]

# (d)
rownames = c('row1', 'row2', 'row3')
colnames = c('col1', 'col2', 'col3')

#(i)
matSqnam <- matrix(matSq, nrow = 3, ncol=3, dimnames = list(rownames, colnames))
print(matSqnam)
# ii
matSqnam[1,]
# iii
matSqnam[,3]
# iv
# output of Q.4. C ii
# [1] 1 4 7
# output of Q.4. C iii
#[1] 7 8 9
# output of Q. 4. d ii
# col1 col2 col3 
#  1    4    7 
#output of Q. 4. d  iii
#row1 row2 row3 
# 7    8    9 

# (e)
rowRecnames = c('row1', 'row2', 'row3', 'row4')
colRecnames = c('col1', 'col2', 'col3')
matRec <- matrix(1:12, nrow=4, ncol=3, byrow = TRUE,dimnames = list(rowRecnames,colRecnames))
matRec

# (f)
# i
matSq + matSq
# ii
matSq + matRec
# iii
matSq - matSq
# iv
matSq - matRec
# v
matSq * matSq
# vi
matSq * matRec
# vii
matSq / matSq
# viii
matSq / matRec
# ix
# output for Q.4. f ii
# Error in matSq + matRec : non-conformable arrays
# output for Q.4. f  iv
#Error in matSq - matRec : non-conformable arrays
# output for Q.4. f  vi
# rror in matSq * matRec : non-conformable arrays
# output for Q.4. f viii
# Error in matSq/matRec : non-conformable arrays

# Question 5
# (a)
matRecT <- t(matRec)

# (b)
matRecT

# (c)
# i
matRec[2, 3]
# ii
matRecT[2, 3]
# iii
matRecT[3, 2]
# iv output for Q.5. c (i, ii, iii).
#[1] 6
#[1] 8
#[1] 6
# v
matRec[4,]
# vi
matRecT[4,]

# (d)
# i
cbind(matSq, matSq)
# ii
cbind(matSq, matRec)
# iii
cbind(matSq, matRecT)
# iv output for Q.4. d (iii)
#            row1 row2 row3 row4
#col1 1 4 7    1    4    7   10
#col2 2 5 8    2    5    8   11
#col3 3 6 9    3    6    9   12

