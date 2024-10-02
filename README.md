# Linear Regression Analysis Script

This repository contains an R script for performing a linear regression analysis on telecom data. The script includes steps for checking model assumptions such as multicollinearity, independence, homoscedasticity, and normality of residuals.

## Table of Contents

- [Overview](#overview)
- [Requirements](#requirements)
- [Usage](#usage)
- [Analysis Steps](#analysis-steps)
- [Results Interpretation](#results-interpretation)
- [License](#license)

## Overview

The script performs the following analyses:
- Fits an Ordinary Least Squares (OLS) regression model.
- Checks for multicollinearity using Variance Inflation Factor (VIF).
- Tests for independence using the Durbin-Watson test.
- Assesses homoscedasticity with the Breusch-Pagan test.
- Evaluates the normality of residuals using the Shapiro-Wilk test.

## Requirements

To run this script, you need:
- R (version 4.0 or higher recommended)
- RStudio (optional, but recommended for ease of use)
- Required R packages: `readxl`, `ggplot2`, `car`, `lmtest`

You can install the required packages using the following command:

```r
install.packages(c("readxl", "ggplot2", "car", "lmtest"))
