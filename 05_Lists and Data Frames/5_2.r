######################
##   Exercise 5.2   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

# a)
dframe <-
  data.frame(
    person = c("Stan", "Francine", "Steve", "Roger", "Hayley", "Klaus"),
    sex = factor(c("M", "F", "M", "M", "F", "M")),
    funny = factor(c("High", "Med", "Low", "High", "Med", "Med"))
  )

# b)
dframe$age <- c(41,41,15,1600,21,60)

# c)
dframe <- dframe[,c(1,4,2,3)]
dframe

# f)
dframe[(dframe$sex == "F")&(dframe$funny == "Med"|dframe$funny == "High"),c("person", "age")]

# g)
dframe[substr(dframe$person, 1,1) == "S",]
