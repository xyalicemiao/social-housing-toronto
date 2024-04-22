#### Preamble ####
# Purpose: Tests 
# Author: Xiaoyu Miao
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: xy.miao@mail.utoronto.ca
# License: MIT
# Pre-requisites: Have the data downloaded


#### Workspace setup ####
library(tidyverse)

#### Test data ####

# Load data
data <- read.csv(here::here("data/analysis_data.csv"))

# Test to ensure all values are greater than zero
test_results <- data %>% 
  summarise(across(everything(), ~ all(. > 0)))

# Print the test results
print(test_results)

