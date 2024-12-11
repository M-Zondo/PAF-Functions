#PIF Calculation 

#Step 1 - Probability Density Function of the distribution of exposure (risk factor) in population 
# Call the PDF function 
pop_pdf <- pdf_func(distribution = 'lognormal', params = c(3.161458379,0.240906504))

#Step 2 - Probability Density Function of the distribution of exposure (risk factor) in theoretical minimum population  
# Call the PDF function again with new parameters 
theo_pdf <- pdf_func(distribution = 'lognormal', params = c(3.043389934,0.047592086))

#Step 3 - Relative risk function of how relative risk changes with exposure levels 
relrisk_func <- rr_function(distribution = 'exponential', 1.13,min_exposure = 21, scaling = 5)


#Step 4 - Calculate PIF

pif_calc(pop_pdf,theo_pdf,relrisk_func, lx = 14, hx = 60)
