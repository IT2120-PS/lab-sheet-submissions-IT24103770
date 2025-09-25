# Question 1


setwd("C:\\Users\\IT24103770\\Desktop\\IT24103770")

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

popmn <- mean(Weight.kg.)


popvar <- var(Weight.kg.)

popmn
popvar


# Question 2


samples <- c()
n <- c()


for(i in 1:25){
  s <- sample(Weight.kg., 6, replace = TRUE)   
  samples <- cbind(samples, s)                 
  n <- c(n, paste("s", i))                     
}

colnames(samples) <- n

s.means <- apply(samples, 2, mean)
s.vars <- apply(samples, 2, var)

s.means
s.vars

# Question 3:

samplesmean <- mean(s.means)
samplesmean
samplevars <- var(s.means)
samplevars

popmn
samplesmean

truevar <- popvar / 5

samplevars
truevar
