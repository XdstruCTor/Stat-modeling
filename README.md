# Log Reg models and Linear reg models

This repository contains R Markdown files and resources for various statistical modeling approach.


The  first R script is for performing linear regression analysis on telecom data.script includes steps for checking model assumptions such as multicollinearity, independence, homoscedasticity, and normality of residuals.


## OLS script Overview

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


## Log Reg Script Overview (supplementary project)
- `log_reg_models.Rmd`: The markdown focus on constructing and applying logistic regressions models in various situaton. The notbook focus on random intercept models (random effect) vs fixed models(fixed effect) and measuring their performances.
- The first part of the notebook focus on applying log regression on data from Potthoff and Roy paper where they conducted detailed orthodontic measurements on children in order to better understand facial growth patterns and relationships between dental and skeletal development. The work provided a basis for analyzing various facial and dental characteristics, which could help orthodontists in diagnosing and planning treatments for growing children.

Their work contributed to the development of **cephalometric analysis**, which is a critical part of orthodontics for evaluating the positioning of teeth and jaws. Cephalometric analysis helps in understanding how the facial bones and teeth grow and develop over time, particularly in relation to the head and skull. The study laid the groundwork for future research on growth prediction and orthodontic treatment planning.

## Usage
1. Clone the repository:


2. Open and run the `.Rmd` files in RStudio.

## .gitignore
A `.gitignore` file is included to prevent uploading unnecessary or sensitive files such as:
- Temporary R session files (`.Rhistory`, `.RData`)
- Cache and log files (`*_cache/`, `*.log`)
- Output files (`*.html`, `*.pdf`)
