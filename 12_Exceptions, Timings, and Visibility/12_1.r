######################
##  Exercise 12.1   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

#a)

factorialop <- function(x){
  if(x<0){
    stop("Input is less than zero.")
  }
  if(x == 0){
    return(1)
  } else {
    return(x * factorialop(x-1))
  }
}
factorialop(5)
factorialop(8)
factorialop(-8)

#b)
listsolve <- function(x,noninv = NA,nonmat = "not a matrix",silent = TRUE){
  if(!is.list(x)){
    stop("x is not a list.")
  }
  if(length(x) < 1){
    stop("The list has to contain at least one member.")
  }
  if(!is.character(nonmat)){
    warning("nonmat is not a character string, trying to coerce")
    nonmat <- as.character(nonmat)
  }
  for(i in 1:length(x)){
    if(is.matrix(x[[i]])){
      attempt <- try(solve(x[[i]]), silent = silent)
      if(class(attempt)=="try-error"){
        x[[i]] <- noninv
      } else {
        x[[i]] <- attempt
      }
    } else {
      x[[i]] <- nonmat
    }
  }
  return(x)
}
listsolve(list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2)))
