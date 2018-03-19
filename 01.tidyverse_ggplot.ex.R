'''
=== Exercise 1 ===

* Visualising with ggplot (scatterplots, barcharts)
'''

library(tidyverse)

# Loading dataset - to complete
setwd("/Users/dataexploitationmac1/Desktop") # set working directory where data is saved
fpl <- read_csv("fpldata.csv") %>%
       group_by(full_name) %>%
       summarise(
         goals = sum(goals_scored, na.rm = TRUE),
         assists = sum(assists, na.rm = TRUE),
         bonus = sum(bonus, na.rm = TRUE),
         yellow_cards = sum(yellow_cards, na.rm = TRUE),
         value = max(value))

# Check the dimensions and the variables in the dataset

# Produce a scatterplot of goals against assists

# In the previous scatterplot, you'll notice that a lot of the points are overlapping. 
# Use geom_jitter rather than geom_point to rectify this.

# Add a third variable to your scatterplot with aesthetics

# Produce a barchart of total goals by team

# Add a third variable to stack the barchart

# Produce a scatterplot with multiple geoms with variables and geoms of your choice.
# Refer to the ggplot cheat-sheet for help. 

# Continue exploring the data and variables with more plots!


