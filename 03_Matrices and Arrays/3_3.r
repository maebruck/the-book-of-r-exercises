######################
##   Exercise 3.3   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

# a)
myarray <- array(data = seq(4.8, 0.1, length.out = 4*2*6), dim = c(4,2,6))
myarray

# b)
myarray2 <- myarray[c(4,1),2,]
myarray2

# c)

myarray3 <- array(data = myarray2[2,], dim = c(2,2,2,3))
myarray3

# d)
myarray4 <- myarray[,,-6]
myarray4

# e)
myarray4[c(2,4),2,c(1,3,5)] <- -99
myarray4
