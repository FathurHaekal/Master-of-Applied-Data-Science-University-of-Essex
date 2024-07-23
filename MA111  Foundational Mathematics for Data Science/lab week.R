#MA331 WEEK 3

?setwd
setwd("D:/Postgraduate Essex/MA111  Foundational Mathematics for Data Science")
lbw <- read.csv("lbw.csv")
df_lbw <- data.frame(lbw)
df_lbw

lbwd <- data.frame(df_lbw$id, df_lbw$age, df_lbw$smoke, df_lbw$bwt)

Reduced.lbw <- head(lbwd, 180)
Reduced.lbw

Reduced.lbw$yage <- Reduced.lbw$df_lbw.age < 19
Reduced.lbw

mom_smoke <- table(Reduced.lbw$df_lbw.smoke)[1]
print(paste("Total mom that smoke = ", mom_smoke))  
#F
mom_y_s <- table(Reduced.lbw$df_lbw.smoke & Reduced.lbw$yage )
print(mom_y_s)
sum(Reduced.lbw$yage & Reduced.lbw$df_lbw.smoke)
#G
mom_y_o_s <- table(Reduced.lbw$df_lbw.smoke | Reduced.lbw$yage )
mom_y_o_s 
sum((Reduced.lbw$df_lbw.smoke | Reduced.lbw$yage ))
#H
sum(!Reduced.lbw$df_lbw.smoke)
#I
attach(Reduced.lbw)
mean(df_lbw.bwt)
sd(df_lbw.bwt)
min(df_lbw.age)
max(df_lbw.age)
median(df_lbw.bwt)
IQR(df_lbw.bwt)
range(df_lbw.bwt)
summary(df_lbw.bwt)
detach(Reduced.lbw)

#summary
summary_by_smoker <- by(Reduced.lbw$df_lbw.bwt, Reduced.lbw$df_lbw.smoke, summary)
summary_by_smoker

# Calculate correlation coefficient between age and bwt
correlation_coefficient <- cor(Reduced.lbw$df_lbw.age, Reduced.lbw$df_lbw.bwt)

# Print the correlation coefficient
print(correlation_coefficient)

#random numbers
rand1 <- rnorm(100, 11, 5.5)
rand1

rand2 <- rnorm(100, 11, 5.5)  
rand2

identical(rand1, rand2)

set.seed(57357)
rand1 <- rnorm(100, 11, 5.5)
rand1

set.seed(57357)
rand2 <- rnorm(100, 11, 5.5)  
rand2
identical(rand1, rand2)

?quantile
q1<- quantile(rand1, probs = 0.25)
q1

# Identify positive elements not more than Q1
positive_elements_not_more_than_Q1 <- rand1[rand1 > 0 & rand1 <= q1]
positive_elements_not_more_than_Q1
