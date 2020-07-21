######################
##  Exercise 11.2   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

#a)

cumulat <- function(P,i,t = 12,y,plotit = TRUE, ylab = "Balance (F)", xlab = "Year (y)", main = "Compound interest calculator",...){
  cumulat.atyear <- function(P,i,t,y){
    return(P*(1+i/(100*t))^(t*y))
  }
  if(plotit){
    years = 1:y
    balance_per_year <- cumulat.atyear(P,i,t,years)
    plot(1:y,balance_per_year,type = "s",xlab = xlab,ylab = ylab,main = main,...)
  } else {
    years = 1:y
    return(cumulat.atyear(P,i,t,years))
  }
}
#i)
cumulat(5000,4.4,12,10,F)[10]
#ii)
cumulat(100,22.9,12,20,T)
#iii)
balance_annual <- cumulat(100,22.9,1,20,F)
lines(type = "s",x=1:20,y=balance_annual,col = "red")
legend(x=2,y=7000,legend = c("monthly", "annual"),col = c("black", "red"),lty = c(1,1))

#b)

quadr_eqn_solver <- function(k1,k2,k3){
  if(any(c(missing(k1),missing(k2),missing(k3)))){
    print("One of the arguments are missing.")
    return(NaN)
  }
  if(k2^2-4*k1*k3<0){
    print("There are no real solutions.")
    return(NA)
  } else if(k2^2-4*k1*k3==0){
    return(-k2/(2*k1))
  } else {
    return(c((-k2-(k2^2-4*k1*k3)^0.5)/(2*k1),(-k2+(k2^2-4*k1*k3)^0.5)/(2*k1)))
  }
}
#i)
quadr_eqn_solver(2,-1,-5)
quadr_eqn_solver(1,1,1)

#ii)
quadr_eqn_solver(1.3,-8,-3.13)
quadr_eqn_solver(2.25,-3,1)
quadr_eqn_solver(1.4,-2.2,-5.1)
quadr_eqn_solver(-5,10.11,-9.9)

#iii)
quadr_eqn_solver(1.4,-2.2)

