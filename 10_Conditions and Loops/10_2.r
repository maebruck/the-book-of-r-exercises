######################
##  Exercise 10.2   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

#a)
mynum_switch <- function(mynum){
  if(mynum == 1){
    foo <- 12
  } else if(mynum == 2){
    foo <- 34
  } else if(mynum == 3){
    foo <- 56
  } else if(mynum == 4){
    foo <- 78
  } else {
    foo <- NA
  }
  return(foo)
}
mynum_switch(3)

#b)


find_dosage <- function(lowdose, meddose, highdose, doselevel){
  if(any(doselevel == "High")){
    if(lowdose >= 10){
      lowdose <- 10
    } else {
      lowdose <- lowdose / 2
    }
    if(meddose >= 26){
      meddose <- 26
    }
    if(highdose < 60){
      highdose <- 60
    } else {
      highdose <- highdose * 1.5
    }
    dosage <- rep(lowdose,length(doselevel))
    dosage[doselevel == "Med"] <- meddose
    dosage[doselevel == "High"] <- highdose
  } else {
    doselevel_new <- factor(doselevel, levels = c("Low", "Med"), labels = c("Small", "Large"))
    if(lowdose < 15 && meddose < 35){
      lowdose <- lowdose * 2
      meddose <- meddose + highdose
    }
    dosage <- rep(lowdose, length(doselevel_new))
    dosage[doselevel_new == "Large"] <- meddose
  }
  return(dosage)
}

lowdose_a <- 12.5
meddose_a <- 25.3
highdose_a <- 58.1
doselevel_a <- factor(c("Low","High","High","High","Low","Med","Med"),levels=c("Low","Med","High"))

find_dosage(lowdose_a, meddose_a, highdose_a, doselevel_a)

doselevel_b <- factor(c("Low","Low","Low","Med","Low","Med", "Med"),levels=c("Low","Med","High"))

find_dosage(lowdose_a, meddose_a, highdose_a, doselevel_b)

lowdose_c <- 9
meddose_c <- 49
highdose_c <- 61
doselevel_c <- factor(c("Low","Med","Med"),
                    levels=c("Low","Med","High"))
find_dosage(lowdose_c, meddose_c, highdose_c, doselevel_c)

find_dosage(lowdose_c, meddose_c, highdose_c, doselevel_a)
