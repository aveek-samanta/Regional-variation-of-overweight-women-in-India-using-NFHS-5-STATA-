/// STATA PROJECT ON Regional variation of overweight women in India

***** Name : Aveek Samanta
***** Institute : International Institute for population studies
*
*
*
*
*
*
** keeping those variables which are significant to this project

keep v005 v013 v024 v025 v026 v445 v190a v438 v213 v219 v501 v106 s731g s731f s731h s731a s731e v438 v437 s728e s728c s722d s722e s722x s728b
bmi = v445/100

***************************************************************
******* Checking missing & extreme values and drop them *******

ta bmi
codebook bmi 

** droping missing values and unrealistic values from bmi
drop if bmi == .
drop if bmi < 10 | bmi > 60
ta bmi

**categorise bmi in 4 categories

recode bmi (min/18.5 = 0 "underweight") (18.5/24.9=1 "normal") (24.9/29.9= 2 "overweight") (29.9/max = 3 "obese"), gen (bmi_n)
ta bmi_n

** categories bmi in two categories for overweight analysis

recode bmi (min/24.9 = 0 "non-overweight") (24.9/max = 1 "overweight") , gen (bmi_n1)
ta bmi_n1

*** test of association of bmi and other variables  

ta s731a bmi_n , chi2
ta s731e bmi_n , chi2
ta s731f bmi_n , chi2
ta s731g bmi_n , chi2
ta s731h bmi_n , chi2
ta v219 bmi_n, chi2

******** generating a new variable alcohol_consume 

 gen alcohol_consume = .
 replace alcohol_consume = 1 if s722d == 1 | s722e ==1 | s722x ==1

 replace alcohol_consume = 0 if s722d == 0 & s722e == 0 & s722x == 0
 
 label define gt 0 "no alcohol consume" 1 "alcohol consume"
 label value alcohol_consume gt
 tab alcohol_consume 
 
 **generatig two groups not overweight & overweight 
 recode bmi (min/24.9=0 "not overweight") (24.9/max=1 "overweight") , gen (bmi_n1)
 
 **cross tabulation of bmi with different independent variables using sample weight
 
gen weight = v005/1000000
ta v024 bmi_n , r nof 
ta v501 bmi_n1 [aw= weight] , r nof
ta v025 bmi_n1 [aw= weight] , r nof
ta alcohol_consume bmi_n1 [aw= weight] , r nof
ta v013 bmi_n1 [aw= weight] , r nof
ta bmi_n1 s728b [aw= weight] , r nof
ta bmi_n1 s728c [aw= weight] , r nof
ta bmi_n1 s728e [aw= weight] , r nof
ta s731a bmi_n1 [aw= weight] , r nof
ta s731f bmi_n1 [aw= weight] , r nof
ta s731g bmi_n1 [aw= weight] , r nof
ta s731 bmi_n1 [aw= weight] , r nof
ta v013 bmi_n [aw= weight] , r nof
 
 
 
 
 
 
 
 
 
 
 
 
 
 