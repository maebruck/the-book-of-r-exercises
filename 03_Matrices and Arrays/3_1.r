######################
##   Exercise 3.1   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

# Matrices and Arrays

# a)

mymatrix <-
  matrix(
    data = c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5),
    nrow = 4,
    ncol = 2,
    byrow = T
  )
mymatrix

# b)
dim(mymatrix[-1, ])

# c)
mymatrix[, 2] <- sort(mymatrix[, 2])
mymatrix

# d)
mymatrix[-4, -1]
#this is a vector
matrix(mymatrix[-4, -1], ncol = 1)

# e)
mymatrix2 <- mymatrix[3:4, ]
mymatrix2

# f)

mymatrix[c(4, 1), c(2, 1)] <- -0.5 * diag(mymatrix2)
mymatrix
