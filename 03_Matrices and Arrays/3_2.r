######################
##   Exercise 3.2   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

# a)

2 / 7 * (matrix(c(1, 2, 2, 4, 7, 6), nrow = 3, byrow = T) - matrix(seq(10, 60, 10), nrow = 3, byrow = T))

# b)

a <- matrix(c(1, 2, 7), nrow = 3)
b <- matrix(c(3, 4, 8), nrow = 3)

# i) AB -> incompatible sizes.
a %*% b

# ii) t(A)B -> possible
t(a) %*% b

# iii) t(B)(A t(A)) -> possible
t(b) %*% (a %*% t(a))

# iv) (A t(A))*t(B) -> incompatible sizes
(a %*% t(a)) %*% t(b)

# v) (((B t(B))+(A t(A))) - 100*I)^(-1)
solve((b %*% t(b)) + (a %*% t(a)) - 100 * diag(nrow = 3))

# c)
a = diag(c(2, 3, 5, -1))
solve(a) %*% a - diag(nrow = 4)
#as required