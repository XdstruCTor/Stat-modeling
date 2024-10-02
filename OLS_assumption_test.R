# Load necessary libraries
library(readxl)
library(ggplot2)
library(car)
library(lmtest)

# Set file path for the Excel data
file_path <- "C://Users//user//OneDrive - United States International University (USIU)//fall 2024//STA 3010//Assignments//telco.xlsx"

# Read the Excel file (assuming the data is in the first sheet)
data1 <- read_excel(file_path)

# Fit the OLS model
model <- lm(longmon ~ tenure + age + address + income + ed + employ + 
              reside + tollmon + equipmon + cardmon + wiremon + longdistanceovertenure, data = data1)

# Summary of the model
print(summary(model))

# Residuals vs Fitted plot for linearity
plot(model, which = 1)

# Check for multicollinearity using VIF
vif_values <- vif(model)
print(vif_values)

# Interpret VIF
if (any(vif_values > 5)) {
  cat("Warning: VIF values greater than 5 may indicate potential multicollinearity issues.\n")
}

# Durbin-Watson test for independence
dw_test <- dwtest(model)
cat("Durbin-Watson Test Results:\n")
cat("Test Statistic (DW):", dw_test$statistic, "\n")
cat("p-value:", dw_test$p.value, "\n")

# Interpret Durbin-Watson results
if (dw_test$p.value > 0.05) {
  cat("No significant evidence of autocorrelation in the residuals of the model.\n")
}

# Breusch-Pagan test for homoscedasticity
bp_test <- bptest(model)
cat("Breusch-Pagan Test Results:\n")
cat("Test Statistic (BP):", bp_test$statistic, "\n")
cat("Degrees of Freedom (df):", bp_test$parameter[1], "\n")
cat("p-value:", bp_test$p.value, "\n")

# Interpret Breusch-Pagan results
if (bp_test$p.value < 0.05) {
  cat("Evidence of heteroscedasticity in the model residuals.\n")
}

# Q-Q plot for normality
plot(model, which = 2)

# Shapiro-Wilk test for normality
shapiro_test <- shapiro.test(residuals(model))
cat("Shapiro-Wilk Normality Test Results:\n")
cat("Test Statistic (W):", shapiro_test$statistic, "\n")
cat("p-value:", shapiro_test$p.value, "\n")

# Interpret Shapiro-Wilk results
if (shapiro_test$p.value < 0.05) {
  cat("The residuals of the model do not follow a normal distribution.\n")
}
