######################
##   Exercise 4.5   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

# a)

sex <- rep("M", 20)
sex[c(1, 5:7, 12, 14:16)] <- "F"

party <- rep("National", 20)
party[c(1, 4, 12, 15, 16, 19)] <- "Labour"
party[c(6, 9, 11)] <- "Greens"
party[c(10, 20)] <-  "Other"

# b)
party.fac <- factor(party)
sex.fac <- factor(sex)
#ordering does not make sense.

# c)
party.fac[sex.fac == "M"]
sex.fac[party.fac == "National"]

# d)
party.add <-
  c("National", "Maori", "Maori", "Labour", "Greens", "Labour")
sex.add <- c("M", "M", "F", "F", "F", "M")
party.new.fac <- factor(c(party, party.add))
sex.new.fac <- factor(c(sex, sex.add))
party.new.fac
sex.new.fac

# e)
confidence.raw <-
  c(93, 55, 29, 100, 52, 84, 56, 0, 33, 52, 35, 53, 55, 46, 40, 
    40, 56, 45, 64, 31, 10, 29, 40, 95, 18, 61)
confidence.fac <-
  cut(
    confidence.raw,
    breaks = c(0, 30, 70, 100),
    include.lowest = T,
    labels = c("Low", "Moderate", "High")
  )
confidence.fac

# f)
confidence.fac[party.fac == "Labour"]
confidence.fac[party.fac == "National"]
