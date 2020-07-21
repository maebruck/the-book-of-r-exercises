######################
##  Exercise 10.5   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

#b)
matlist <-
  list(matrix(c(T, F, T, T), 2, 2), matrix(c("a", "c", "b", "z", "p", "q"), 3, 2),
       matrix(1:8, 2, 4))

matlist <- lapply(matlist, t)
matlist

#ci)
qux <- array(96:1, dim = c(4, 4, 2, 3))
apply(qux[, , 2, ], 3, diag)

#cii)
apply(apply(qux[, 4, , ], 3, dim), 1, sum)
