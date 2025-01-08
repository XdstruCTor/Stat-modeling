# Log Reg models and Linear reg models

This repository contains R Markdown files and resources for various statistical modeling approach.


The  first R script is for performing linear regression analysis on telecom data.script includes steps for checking model assumptions such as multicollinearity, independence, homoscedasticity, and normality of residuals.

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

install.packages(c("readxl", "ggplot2", "car", "lmtest"))


## second script
- `log_reg_models.Rmd`: The project focus on constructing and applying logistic regressions models in various situaton. The notbook focus on random intercept models (random effect) vs fixed models(fixed effect) and measuring their performances.

## Usage
1. Clone the repository:


2. Open and run the `.Rmd` files in RStudio.

## .gitignore
A `.gitignore` file is included to prevent uploading unnecessary or sensitive files such as:
- Temporary R session files (`.Rhistory`, `.RData`)
- Cache and log files (`*_cache/`, `*.log`)
- Output files (`*.html`, `*.pdf`)
