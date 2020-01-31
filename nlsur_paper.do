
clear all
set more off

version 12

. webuse food
. set seed 1
. generate nkids = int(runiform()*4)
. generate rural = (runiform() > 0.7)


save "~/Dokumente/Estimating nonlinear equationsystems in R using nlsur/food.dta", replace

dis r(mean)
// 3.7322022


. quaids w1-w4, anot(3.7322022) prices(p1-p4) expenditure(expfd) demographics(nkids rural)

. quaids w1-w4, anot(3.72) prices(p1-p4) expenditure(expfd) demographics(nkids rural)


. quaids w1-w4, anot(10) prices(p1-p4) expenditure(expfd)


. quaids w1-w4, anot(9) prices(p1-p4) expenditure(expfd) demographics(nkids rural)
