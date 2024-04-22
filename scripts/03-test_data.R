#### Preamble ####
# Purpose: Tests 
# Author: Xiaoyu Miao
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: xy.miao@mail.utoronto.ca
# License: MIT
# Pre-requisites: Have the data downloaded


#### Workspace setup ####
library(tidyverse)

#### Test 1 ####

# Load data
data <- read.csv(here::here("data/analysis_data.csv"))

# Test to ensure there are no missing values in any cell of the dataset
no_missing_values <- !anyNA(data)

# Print the test result
print(no_missing_values)


#### Test 2 ###

# Load data
data <- read.csv(here::here("data/analysis_data.csv"))

# Test to ensure all values are greater than zero
test_results <- data %>% 
  summarise(across(everything(), ~ all(. > 0)))

# Print the test results
print(test_results)


#### Test 3 ####

# Load data
data <- read.csv(here::here("data/analysis_data.csv"))

# Test to ensure all numeric values are integers
test_results <- data %>% 
  summarise(across(where(is.numeric), ~ all(. == floor(.))))

# Print the test results
print(test_results)


#### Test 4 ####

# Load data
data <- read.csv(here::here("data/analysis_data.csv"))

# Test to ensure there are no missing values in the dataset
test_results <- data %>% 
  summarise(across(everything(), ~ all(complete.cases(.))))

# Print the test results
print(test_results)





