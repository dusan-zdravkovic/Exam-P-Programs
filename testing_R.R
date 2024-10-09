# test R script
print("Hello, R in VSCode!")

# Basic probability script

# Define the sample space
total_outcomes <- 6

# Define the favorable outcomes (rolling a 5 or a 6)
favorable_outcomes <- 2

# Calculate probability of rolling greater than 4
probability <- favorable_outcomes / total_outcomes
print(paste("The probability of rolling a number greater than 4 is:", probability))

# Create a probability distribution for all outcomes (1 to 6)
outcomes <- 1:6
probabilities <- rep(1/total_outcomes, total_outcomes)  # Each side has equal probability

# Save the plot as a PNG
png(filename = "/Users/dusanzdravkovic/Desktop/Exam-P-Programs/probability_plot_testR.png", width = 800, height = 600)

# Plot the probability distribution
barplot(probabilities,
        names.arg = outcomes,          # Labels for x-axis (1 to 6)
        ylim = c(0, 0.2),              # Set y-axis limits to 0 to 0.2
        xlab = "Die Outcome",
        ylab = "Probability",
        main = "Probability Distribution of Rolling a Six-Sided Die",
        col = ifelse(outcomes > 4, "lightgreen", "lightblue"))  # Green for outcomes 5 and 6

# Close the device to save the file
dev.off()
