######################
##  Exercise 10.3   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

#b)

mystring <- c("Peter", "Homer", "Lois", "Stewie", "Maggie", "Bart")
numvec <- rep(NA, length(mystring))

for (i in 1:length(mystring)) {
  numvec[i] <-
    switch(
      mystring[i],
      Homer = 12,
      Marge = 34,
      Bart = 56,
      Lisa = 78,
      Maggie = 90,
      NA
    )
}

#c)
num_of_matrices <- function(mylist) {
  counter <- 0
  for (current in mylist) {
    if (is.list(current)) {
      for (current2 in current) {
        if (is.matrix(current2)) {
          counter <- counter + 1
        }
      }
    } else if (is.matrix(current)) {
      counter <- counter + 1
    }
  }
  return(counter)
}
num_of_matrices(list(
  aa = c(3.4, 1),
  bb = matrix(1:4, 2, 2),
  cc = matrix(c(T, T, F, T, F, F), 3, 2),
  dd = "string here",
  ee = list(c("hello", "you"), matrix(c("hello", "there"))),
  ff = matrix(c("red", "green", "blue", "yellow"))
))
num_of_matrices(list("tricked you", as.vector(matrix(1:6, 3, 2))))
num_of_matrices(list(list(1, 2, 3), list(c(3, 2), 2), list(c(1, 2), matrix(c(
  1, 2
))),
rbind(1:10, 100:91)))
