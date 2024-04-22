#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Xiaoyu Miao
# Date: April 17th
# Contact: xy.miao@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
#Access to GSS Data
#Step 1: Visit the Open Data Toronto website
#Visit the Open Data Toronto website: https://open.toronto.ca/

#Step 2: Find relevant datasets
#You can then use the search function on the website to search for wanted dataset and complete the data collection.

#### Save data ####

#Step 4: Download the data
#Once you have found the relevant dataset, you can start downloading it. Just select the formate you wanted and click the "download data" button.

#Optional
# change the_raw_data to whatever name you assigned when you downloaded it.

write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         
