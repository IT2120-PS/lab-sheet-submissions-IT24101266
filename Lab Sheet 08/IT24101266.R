setwd("C:\\Users\\ASUS\\OneDrive\\Desktop\\IT24101266")
getwd()

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

fix(data)

attach(data)

weights <- data$Weight.kg.

weights

pop_mean <- mean(weights)

pop_var <- mean((weights - pop_mean)^2)

pop_sd <- sqrt(pop_var)

pop_mean
pop_var
pop_sd


samples <- c()
n <- c()

for (i in 1:25) {
  s <- sample(weights, 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i))
}


colnames(samples) <- n


s.means <- apply(samples, 2, mean)
s.vars  <- apply(samples, 2, var)

samplemean <- mean(s.means)
sampleSD   <- sd(s.means)
