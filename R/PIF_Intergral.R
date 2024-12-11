pif_calc<- function(fun1, fun2, fun3, lx , hx){
  #Population integral 
  before <- function(x){
    fun1(x)*fun3(x)
  }
  
  #Theoretical minimum integral 
  after <- function(x){
    fun2(x)*fun3(x)
  }
  
  #Integrate and get values 
  
  before_int <- integrate(before,lower = lx, upper = hx)$value
  after_int <- integrate(after, lower = lx, upper = hx)$value
  
  pif <- (before_int - after_int)/before_int
  
  return(pif)
}