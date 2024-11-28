rr_function <- function(distribution = 'linear', relrisk = 1.1, min_exposure = 10, scaling = 1) {
  
  if (distribution == 'linear') {
    relrisk_fun <- function(x){
      ifelse(x < min_exposure, 1, relrisk*(x - min_exposure))
    } 
    return(relrisk_fun)
  } else if (distribution == 'exponential') {
    relrisk_fun <- function(x) {
      ifelse(x < min_exposure,1,relrisk^((x - min_exposure)/scaling))
    }
    return(relrisk_fun)
  }
}

rr_function()