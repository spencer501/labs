#Welcome to Lab 3, please answer the following questions

#Install and require package MASS
library(MASS)
library(dplyr)

#Using the built in dataset anorexia, aggregate the data to look at:
#       1. the number of patients who received a treatment (choose one) who responded positively to treatment
#       2. the number of patients who recieved a treatment who either did not respond or responded negatively to treatment
#       3. the number of patients who were in the control group who responded positively to treatment
#       4. the number of patients who were in the control group who did not respond or responded negatively to treatment

#Such that you end up with a 2 by 2 table
data <- anorexia %>%
    mutate(weight.change = Postwt - Prewt)

num.t.p <- data %>%
    filter(Treat == 'CBT',
           weight.change > 0) %>%
    nrow()

num.t.n <- data %>%
    filter(Treat == 'CBT',
           weight.change <= 0) %>%
    nrow()

num.c.p <- data %>%
    filter(Treat == 'Cont',
           weight.change > 0) %>%
    nrow()

num.c.n <- data %>%
    filter(Treat == 'Cont',
           weight.change <= 0) %>%
    nrow()

#What kind of analysis appropriate to perform on a study like this?
#   It is most appropriate to perform a case-control analysis,
#   as we have access to both test and control groups.


#Perform the appropriate choice on the dataset
result <- (num.t.p / num.t.n) / (num.c.p / num.c.n)

#What does your result tell you?
#   This result tells us the number of successful treatments for
#   every unsuccessful treatment.


#Write a function that allows you to perform your analysis based on what kind of treatment you want
#that returns the appropriate calculation
analysis <- function(treatment) {

}




#Which treatment worked better?





