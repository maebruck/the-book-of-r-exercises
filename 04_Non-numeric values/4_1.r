######################
##   Exercise 4.1   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

# a)

myvector <- c(6, 9, 7, 3, 6, 7, 9, 6, 3, 6, 6, 7, 1, 9, 1)
myvector == 6
myvector >= 6
myvector < 6 + 2
myvector != 6

# b)
myarray <- array(myvector[-1:-3], dim = c(2, 2, 3))
myarray <= 6 / 2 + 4
myarray + 2 <= 6 / 2 + 4

# c)
diag(10) == 0

# d)
any(myarray <= 6 / 2 + 4, myarray + 2 <= 6 / 2 + 4)
all(myarray <= 6 / 2 + 4, myarray + 2 <= 6 / 2 + 4)

# e)
any(diag(diag(10) == 0))
#as required
# 