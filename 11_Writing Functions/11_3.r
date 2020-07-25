######################
##  Exercise 11.3   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

#a)

foo <- list("a", c("b", "c", "d", "e"), "f", c("g", "h", "i"))

lapply(foo, function(x)
  paste(x, "!", sep = ""))

#b)

factorialop <- function(x) {
  if (x == 0) {
    return(1)
  } else {
    return(x * factorialop(x - 1))
  }
}
factorialop(5)
factorialop(12)
factorialop(0)

#c)
geolist <- function(input) {
  geovec <- function(vec) {
    (prod(vec)) ^ (1 / length(vec))
  }
  for (i in 1:length(input)) {
    if (is.vector(input[[i]])) {
      input[[i]] <- geovec(input[[i]])
    } else if (is.matrix(input[[i]])) {
      input[[i]] <- apply(input[[i]], 1, geovec)
    }
  }
  return(input)
}

foo <-
  list(1:3, matrix(c(3.3, 3.2, 2.8, 2.1, 4.6, 4.5, 3.1, 9.4), 4, 2), matrix(c(3.3, 3.2, 2.8, 2.1, 4.6, 4.5, 3.1, 9.4), 2, 4))
geolist(foo)

bar <- list(1:9, matrix(1:9, 1, 9), matrix(1:9, 9, 1), matrix(1:9, 3, 3))
geolist(bar)
