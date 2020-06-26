######################
##   Exercise 4.3   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

# a)
foo <- c(7,5,6,1,2,10,8,3,8,2)
# i)
bar <- foo[foo >= 5]
# ii)
foo[-which(foo >= 5)]

# b)
# i)
baz <- matrix(bar, nrow = 2, byrow = T)
baz[baz == 8] <- baz[1,2]^2
# ii)
all(baz <= 25, baz > 4)

# c)
qux <- array(c(10,5,1,4,7,4,3,3,1,3,4,3,1,7,8,3,7,3),c(3,2,3))
qux
# i)
which(qux == 3 | qux == 4, arr.ind = T)
# ii)
qux[qux < 3|qux >= 7] <- 100
qux

# d)
foo[c(F,T)]
#c(0,1) would not work, would return objects in 0 and 1, i.e. would result in an error
