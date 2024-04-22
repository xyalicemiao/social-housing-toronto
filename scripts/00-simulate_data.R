#### Preamble ####
# Purpose: Simulates a random number of social housing units
# Author: Xiaoyu Miao
# Date: 17 April 2024
# Contact: xy.miao@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
# This setup will create a structured tabular dataset where each row represents the social housing status for a given year and applications ID, and the active applications are recorded in the new/reactive column, the inactive/cancelled applications are recorded in the inactive/cancelled column. This dataset is constructed to reflect different scenarios in the OpenDataToronto where it collects information from quarters of different years. However, columns such as "special priority","over housed" were reduced to keep the data streamlined.

simulated_dataset <-
  tibble(
    year = 2000 + rep(19:23, each = 4),
    quarter = rep(1:4,each = 5),
    new = sample(100:10000, size = 20, replace = TRUE),
    housed = sample(100:10000, size = 20, replace = TRUE),
    inactive = sample(100:10000, size = 20, replace = TRUE),
    household_no_dependents = sample(100:10000, size = 20, replace = TRUE),
    household_with_dependents = sample(100:10000, size = 20, replace = TRUE),
    seniors = sample(100:10000, size = 20, replace = TRUE),
    total = household_no_dependents + household_with_dependents + seniors
  )
simulated_dataset

