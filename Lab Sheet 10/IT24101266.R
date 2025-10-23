#Q1

# i. Define Hypotheses

# H0: Customers choose all four snack types (A, B, C, D) equally.
# H1: Customers do not choose all four snack types equally.

# ii.Perform Chi-Square Test

setwd("C:/Users/This PC/Desktop/IT24103109")
# Observed counts of purchases for each snack type
observed <- c(120, 95, 85, 100)
# Probabilities for each snack type (equal = 0.25)
prob <- c(0.25, 0.25, 0.25, 0.25)
# Chi-square goodness-of-fit test
chi_result <- chisq.test(x = observed, p = prob)
# Print result and observed vs expected
print(chi_result)
expected_counts <- sum(observed) * prob
print(data.frame(Snack = c("A","B","C","D"),
                 Observed = observed,
                 Expected = expected_counts))

#iii. Conclusion

#Significance level: α = 0.05
#p-value = 0.089
#Since p-value (0.089) > 0.05,
#fail to reject H₀


