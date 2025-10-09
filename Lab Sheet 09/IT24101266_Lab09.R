setwd("C:\\Users\\ASUS\\OneDrive\\Desktop\\Lab 09-20251009")
getwd()

# Q 01
x <- c(3, 7, 11, 0, 7, 0, 4, 5, 6, 2)
t.test(x, mu = 3)

# Q 02
# Part 1

Weight <- c(17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)
t.test(Weight, mu = 25, alternative = "less")

# Part 2
res <- t.test(Weight, mu = 25, alternative = "less")
res$statistic
res$p.value
res$conf.int


R

#################################################################
## Q 01: Testing if professors know 3 memes on average
#################################################################

x <- c(3, 7, 11, 0, 7, 0, 4, 5, 6, 2)

t.test(x, mu = 3)

#################################################################
## Q 02: Testing the mean weight of mice
#################################################################

# Part 1: Test if true mean weight is less than 25g

Weight <- c(17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)

t.test(Weight, mu = 25, alternative = "less")

# Part 2: Obtain test statistic, p-value, and confidence interval

res <- t.test(Weight, mu = 25, alternative = "less")

res$statistic

res$p.value

res$conf.int

# Q 03

# Part 1
y <- rnorm(30, mean = 9.8, sd = 0.05)
print(y)

# Part 2
t.test(y, mu = 10, alternative = "greater")

# Exercise
# Part 1
baking_time <- rnorm(25, mean = 45, sd = 2)
print(baking_time)

# Part 2
t.test(baking_time, mu = 46, alternative = "less")
