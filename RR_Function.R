rr_function <- function(distribution = 'linear', relrisk , min_exposure , scaling = 1) {
  
  if (distribution == 'linear') {
    relrisk_fun <- function(x){
      ifelse(x <= min_exposure, 1, relrisk*(x - min_exposure))
    } 
    return(relrisk_fun)
  } else if (distribution == 'exponential') {
    relrisk_fun <- function(x) {
      ifelse(x <= min_exposure,1,relrisk^((x - min_exposure)/scaling))
    }
    return(relrisk_fun)
  }
}

rr_function()