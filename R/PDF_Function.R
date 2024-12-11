pdf_func <- function(distribution = 'normal', params = c(param_1 , param_2)){
  
  if(distribution == 'normal'){
    pdf_pop <- function(x){
      dnorm(x, mean = params[[1]], sd = params[[2]] )
    }
    return(pdf_pop)
    
  } else if (distribution == 'lognormal') {
    
    pdf_pop <- function(x){
      dlnorm(x, meanlog = params[[1]], sdlog = params[[2]])
    }
    return(pdf_pop)
    
  } else if (distribution == 'uniform'){
    pdf_pop <- function(x){
      dunif(x,min = params[[1]], max = params[[2]])
    }
    return(pdf_pop)
  }
}

pdf_func()
