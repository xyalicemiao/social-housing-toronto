#### Preamble ####
# Purpose: Cleans the raw plane data 
# Author: Xiaoyu Miao
# Date: 17 April 2024
# Contact: xy.miao@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
#Read data
raw_data <- read_csv("data/raw_data/Centralized Waitlist for Social Housing.csv")

# Get the index of column J
start_index <- which(colnames(raw_data) == "Total")

# Select columns before column J
cleaned_data <- raw_data[, 1:(start_index - 1)]

cleaned_data <- janitor::clean_names(cleaned_data)

#### Save data ####
write_csv(cleaned_data, "data/analysis_data.csv")
