
### Example 1: Page 5 (Getting to Know Your Data) ###
####### Data Frames ##########
Tid <- 1:10
Refund <- c(T,F,F,T,F,F,T,F,F,F)
MartialStatus <- c('Single','Married','Single','Married','Divorced','Married','Divorced','Single','Married','Single')
TaxableIncome <- c(125,100,70,120,95,60,220,85,75,90)
Cheat <- c(F,F,F,F,T,F,F,T,F,T)
Tableau <- data.frame(Tid,Refund,MartialStatus,TaxableIncome,Cheat)
Tableau

### Data Strength (String <- Numeric <- True/False) ###
## Then a one data-type matrix should be String ###
mat_orig <- as.matrix(Tableau)
mat_orig


### Strings requires more data-processing time ###
### Compare each character of a string etc.. ###
### We prefer numeric or binary ###

# Factorize the String features (Martitial Status)
MS_F <- factor(MartialStatus) # You can do more and order the levels in the way you like
MS_F

# Now we can represent those as numeric numbers. Unique number for each level
MS_N <- as.numeric(MS_F) # Can be done also through as.integer(MS_F)
MS_N
# What does those numbers represent levels(MS_F)
levels(MS_F)

Tableau_2 <- data.frame(Tid,MS_N,Refund,TaxableIncome,Cheat)
# Now We know that the strongest data-type is numeric in our new Tableau (There are no more strings)

mat_upd <- as.matrix(Tableau_2)
mat_upd

## How to call a special part of the matrix mat[rows,cols]
mat_upd[c(1,2),c(2,3)] # 2x2 matrix (first two rows with 2nd and 3rd columns)
mat_upd[1,2] # One element (row 1, column2)
mat_upd[,c(1,2)] #First two columns
mat_upd[1,] # First row
