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

set.seed(1688) # For reproducibility
years <- 2019:2023 # Create a sequence of years from 1972 to 2022.
years <- sort(sample(years, length(years), replace = FALSE)) # Randomly sample from these years without replacement, ensuring that each year in the resulting year vector is unique, and then sort in ascending order.
num_appli <- sample(50:100, 1) # Choose a random value between 50 and 100 to determine the number of application or records in the modelled data set.
ids <- 1:num_appli # Generate a string of numbers from 1 to num_appli as a unique identifier for each record or application in the dataset.
statuses <- sample(c("New/reactive", "Housed", "Inactive/cancelled"), num_appli, replace = TRUE) # Statuses are randomly selected from the "New/reactive", "Housed" and "Inactive/Cancelled" options in num_appli, allowing for substitution, which means that the same status can be selected more than once for different applications.

data <- data.frame(year = rep(years, length.out = num_appli),# Repeats the year vector to match the total number of application. If num_appli is greater than the length of the year, it loops through the year vector until num_appli is reached.
                   id = ids,
                   application_statuses = applicationstatuses)


