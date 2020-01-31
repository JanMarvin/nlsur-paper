// set version as Stata changed its RNG
. version 12

// Syntax of Poi 2012
. webuse food
. set seed 1
. generate nkids = int(runiform()*4)
. generate rural = (runiform() > 0.7)


save "~/Dokumente/Estimating nonlinear equationsystems in R using nlsur/food.dta", replace
