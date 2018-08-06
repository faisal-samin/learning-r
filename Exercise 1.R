### Introduction to R 

# 1) Installing and running packages
# 2) Reading files
# 3) Filtering and sorting
# 4) Visualising

# # # # # # # # # # # # # # # # # # # # # # # # # #
# (1) Installing and running packages
# # # # # # # # # # # # # # # # # # # # # # # # # #

# Load the tidyverse package


# # # # # # # # # # # # # # # # # # # # # # # # # #
# (2) Reading files, quickly getting info on your dataset
# # # # # # # # # # # # # # # # # # # # # # # # # #

# set working directory to file where data is stored


# read in the imdb dataset and View it


# get the column names of your dataset


# What is the median of the runtime, rating, revenue and metascore?


# What is the maximum revenue earned by a film?


# Create a frequency table for directors


# # # # # # # # # # # # # # # # # # # # # # # # # # #
# (3) Filtering and sorting, selecting
# # # # # # # # # # # # # # # # # # # # # # # # # # #

# Create a subset of the films data will all columns EXCEPT the description and the actors.
# Use this subset for the remainder of this exercise. 


# Select all films with an imdb rating greater than 8


# Select all Sci-Fi films with a runtime greater than 90 minutes


# Can you sort your earlier frequency table to find the most common director?


# How many films had a Metascore less than 40?


# What is the longest Horror film?


# Create a frequency table for the year of release.


# Which film had the most votes? Why do you think this is?


# Find all films with genre 'Action,Adventure,Sci-Fi', imdb rating greater than 7, 
# metascore greater than 70 and more than a 100,000 votes. Order the final dataset by 
# the revenue. Are these worth watching?



# Create a new column that divides revenue by votes


# # # # # # # # # # # # # # # # # # # # # # # # # # #
# (4) Visualisation
# # # # # # # # # # # # # # # # # # # # # # # # # # #

# Scatterplot of Rating by MetaScore

# Scatterplot of Votes by Revenue (Millions)

# Colour the above scatterplot by Year

# Rather than colouring to add the third dimension, try a facet wrap by Year
